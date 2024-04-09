; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83164 () Bool)

(assert start!83164)

(declare-fun b_free!19129 () Bool)

(declare-fun b_next!19129 () Bool)

(assert (=> start!83164 (= b_free!19129 (not b_next!19129))))

(declare-fun tp!66667 () Bool)

(declare-fun b_and!30635 () Bool)

(assert (=> start!83164 (= tp!66667 b_and!30635)))

(declare-fun mapNonEmpty!35050 () Bool)

(declare-fun mapRes!35050 () Bool)

(declare-fun tp!66666 () Bool)

(declare-fun e!546713 () Bool)

(assert (=> mapNonEmpty!35050 (= mapRes!35050 (and tp!66666 e!546713))))

(declare-datatypes ((V!34353 0))(
  ( (V!34354 (val!11064 Int)) )
))
(declare-datatypes ((ValueCell!10532 0))(
  ( (ValueCellFull!10532 (v!13623 V!34353)) (EmptyCell!10532) )
))
(declare-fun mapValue!35050 () ValueCell!10532)

(declare-datatypes ((array!60101 0))(
  ( (array!60102 (arr!28910 (Array (_ BitVec 32) ValueCell!10532)) (size!29390 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60101)

(declare-fun mapRest!35050 () (Array (_ BitVec 32) ValueCell!10532))

(declare-fun mapKey!35050 () (_ BitVec 32))

(assert (=> mapNonEmpty!35050 (= (arr!28910 _values!1425) (store mapRest!35050 mapKey!35050 mapValue!35050))))

(declare-fun b!969686 () Bool)

(declare-fun e!546717 () Bool)

(declare-fun e!546716 () Bool)

(assert (=> b!969686 (= e!546717 (and e!546716 mapRes!35050))))

(declare-fun condMapEmpty!35050 () Bool)

(declare-fun mapDefault!35050 () ValueCell!10532)

