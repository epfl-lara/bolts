; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132210 () Bool)

(assert start!132210)

(declare-fun b_free!31873 () Bool)

(declare-fun b_next!31873 () Bool)

(assert (=> start!132210 (= b_free!31873 (not b_next!31873))))

(declare-fun tp!111875 () Bool)

(declare-fun b_and!51309 () Bool)

(assert (=> start!132210 (= tp!111875 b_and!51309)))

(declare-fun b!1550494 () Bool)

(declare-datatypes ((V!59309 0))(
  ( (V!59310 (val!19152 Int)) )
))
(declare-datatypes ((tuple2!24824 0))(
  ( (tuple2!24825 (_1!12422 (_ BitVec 64)) (_2!12422 V!59309)) )
))
(declare-datatypes ((List!36313 0))(
  ( (Nil!36310) (Cons!36309 (h!37755 tuple2!24824) (t!51028 List!36313)) )
))
(declare-datatypes ((ListLongMap!22445 0))(
  ( (ListLongMap!22446 (toList!11238 List!36313)) )
))
(declare-fun e!863120 () ListLongMap!22445)

(declare-fun call!70792 () ListLongMap!22445)

(declare-fun minValue!436 () V!59309)

(declare-fun +!4947 (ListLongMap!22445 tuple2!24824) ListLongMap!22445)

(assert (=> b!1550494 (= e!863120 (+!4947 call!70792 (tuple2!24825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun res!1062078 () Bool)

(declare-fun e!863126 () Bool)

(assert (=> start!132210 (=> (not res!1062078) (not e!863126))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132210 (= res!1062078 (validMask!0 mask!926))))

(assert (=> start!132210 e!863126))

(declare-datatypes ((array!103457 0))(
  ( (array!103458 (arr!49925 (Array (_ BitVec 32) (_ BitVec 64))) (size!50476 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103457)

(declare-fun array_inv!38739 (array!103457) Bool)

(assert (=> start!132210 (array_inv!38739 _keys!618)))

(declare-fun tp_is_empty!38149 () Bool)

(assert (=> start!132210 tp_is_empty!38149))

(assert (=> start!132210 true))

(assert (=> start!132210 tp!111875))

(declare-datatypes ((ValueCell!18164 0))(
  ( (ValueCellFull!18164 (v!21951 V!59309)) (EmptyCell!18164) )
))
(declare-datatypes ((array!103459 0))(
  ( (array!103460 (arr!49926 (Array (_ BitVec 32) ValueCell!18164)) (size!50477 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103459)

(declare-fun e!863118 () Bool)

(declare-fun array_inv!38740 (array!103459) Bool)

(assert (=> start!132210 (and (array_inv!38740 _values!470) e!863118)))

(declare-fun bm!70787 () Bool)

(declare-fun call!70791 () ListLongMap!22445)

(declare-fun call!70793 () ListLongMap!22445)

(assert (=> bm!70787 (= call!70791 call!70793)))

(declare-fun b!1550495 () Bool)

(declare-fun e!863122 () Bool)

(assert (=> b!1550495 (= e!863122 tp_is_empty!38149)))

(declare-fun b!1550496 () Bool)

(declare-fun e!863124 () Bool)

(assert (=> b!1550496 (= e!863124 tp_is_empty!38149)))

(declare-fun mapNonEmpty!58930 () Bool)

(declare-fun mapRes!58930 () Bool)

(declare-fun tp!111874 () Bool)

(assert (=> mapNonEmpty!58930 (= mapRes!58930 (and tp!111874 e!863122))))

(declare-fun mapValue!58930 () ValueCell!18164)

(declare-fun mapRest!58930 () (Array (_ BitVec 32) ValueCell!18164))

(declare-fun mapKey!58930 () (_ BitVec 32))

(assert (=> mapNonEmpty!58930 (= (arr!49926 _values!470) (store mapRest!58930 mapKey!58930 mapValue!58930))))

(declare-fun b!1550497 () Bool)

(declare-fun e!863125 () Bool)

(assert (=> b!1550497 (= e!863126 e!863125)))

(declare-fun res!1062080 () Bool)

(assert (=> b!1550497 (=> (not res!1062080) (not e!863125))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1550497 (= res!1062080 (bvslt from!762 (size!50476 _keys!618)))))

(declare-fun lt!668274 () ListLongMap!22445)

(assert (=> b!1550497 (= lt!668274 e!863120)))

(declare-fun c!142549 () Bool)

(declare-fun lt!668272 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1550497 (= c!142549 (and (not lt!668272) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550497 (= lt!668272 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1550498 () Bool)

(assert (=> b!1550498 (= e!863118 (and e!863124 mapRes!58930))))

(declare-fun condMapEmpty!58930 () Bool)

(declare-fun mapDefault!58930 () ValueCell!18164)

