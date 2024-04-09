; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10142 () Bool)

(assert start!10142)

(declare-fun b!76938 () Bool)

(declare-fun b_free!2149 () Bool)

(declare-fun b_next!2149 () Bool)

(assert (=> b!76938 (= b_free!2149 (not b_next!2149))))

(declare-fun tp!8644 () Bool)

(declare-fun b_and!4693 () Bool)

(assert (=> b!76938 (= tp!8644 b_and!4693)))

(declare-fun b!76931 () Bool)

(declare-fun b_free!2151 () Bool)

(declare-fun b_next!2151 () Bool)

(assert (=> b!76931 (= b_free!2151 (not b_next!2151))))

(declare-fun tp!8645 () Bool)

(declare-fun b_and!4695 () Bool)

(assert (=> b!76931 (= tp!8645 b_and!4695)))

(declare-fun b!76918 () Bool)

(declare-fun e!50220 () Bool)

(declare-fun tp_is_empty!2491 () Bool)

(assert (=> b!76918 (= e!50220 tp_is_empty!2491)))

(declare-fun b!76919 () Bool)

(declare-fun e!50231 () Bool)

(declare-fun e!50226 () Bool)

(declare-fun mapRes!3240 () Bool)

(assert (=> b!76919 (= e!50231 (and e!50226 mapRes!3240))))

(declare-fun condMapEmpty!3240 () Bool)

(declare-datatypes ((V!2969 0))(
  ( (V!2970 (val!1290 Int)) )
))
(declare-datatypes ((array!3932 0))(
  ( (array!3933 (arr!1874 (Array (_ BitVec 32) (_ BitVec 64))) (size!2115 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!902 0))(
  ( (ValueCellFull!902 (v!2572 V!2969)) (EmptyCell!902) )
))
(declare-datatypes ((array!3934 0))(
  ( (array!3935 (arr!1875 (Array (_ BitVec 32) ValueCell!902)) (size!2116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!712 0))(
  ( (LongMapFixedSize!713 (defaultEntry!2259 Int) (mask!6248 (_ BitVec 32)) (extraKeys!2110 (_ BitVec 32)) (zeroValue!2157 V!2969) (minValue!2157 V!2969) (_size!405 (_ BitVec 32)) (_keys!3919 array!3932) (_values!2242 array!3934) (_vacant!405 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!712)

(declare-fun mapDefault!3239 () ValueCell!902)

