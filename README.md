# Trustless-AI-POC
A proof of concept for verifying AI API calls are actually being run on the model you actually want them to be run on.

This approach allows API calls to AI vendors to be verified to see that they are actually using the model you want. These vendors are incentivized to lie and run our queries on slow, low-quality models like Llama 7b when we're asking to have them run on Mixtral8x7b which is much harder and takes longer. Using this approach of specifying the random seed means the hash of the output becomes a proof of work which can be verified against other vendors. 

The trustowrthiness of a vendor could be determined as a function of the history of verifications performed by third parties at random intervals to determine a percent trustworthiness of the vendor.

GNU GPL 3.0
