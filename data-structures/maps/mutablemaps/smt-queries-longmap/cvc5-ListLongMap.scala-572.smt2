; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15586 () Bool)

(assert start!15586)

(declare-fun b!154935 () Bool)

(declare-fun b_free!3241 () Bool)

(declare-fun b_next!3241 () Bool)

(assert (=> b!154935 (= b_free!3241 (not b_next!3241))))

(declare-fun tp!12247 () Bool)

(declare-fun b_and!9673 () Bool)

(assert (=> b!154935 (= tp!12247 b_and!9673)))

(declare-fun b!154933 () Bool)

(declare-fun e!101228 () Bool)

(declare-fun tp_is_empty!3043 () Bool)

(assert (=> b!154933 (= e!101228 tp_is_empty!3043)))

(declare-fun b!154934 () Bool)

(declare-fun e!101224 () Bool)

(declare-fun e!101223 () Bool)

(declare-fun mapRes!5207 () Bool)

(assert (=> b!154934 (= e!101224 (and e!101223 mapRes!5207))))

(declare-fun condMapEmpty!5207 () Bool)

(declare-datatypes ((V!3705 0))(
  ( (V!3706 (val!1566 Int)) )
))
(declare-datatypes ((ValueCell!1178 0))(
  ( (ValueCellFull!1178 (v!3427 V!3705)) (EmptyCell!1178) )
))
(declare-datatypes ((array!5138 0))(
  ( (array!5139 (arr!2426 (Array (_ BitVec 32) (_ BitVec 64))) (size!2704 (_ BitVec 32))) )
))
(declare-datatypes ((array!5140 0))(
  ( (array!5141 (arr!2427 (Array (_ BitVec 32) ValueCell!1178)) (size!2705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1264 0))(
  ( (LongMapFixedSize!1265 (defaultEntry!3074 Int) (mask!7487 (_ BitVec 32)) (extraKeys!2815 (_ BitVec 32)) (zeroValue!2917 V!3705) (minValue!2917 V!3705) (_size!681 (_ BitVec 32)) (_keys!4849 array!5138) (_values!3057 array!5140) (_vacant!681 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1264)

(declare-fun mapDefault!5207 () ValueCell!1178)

