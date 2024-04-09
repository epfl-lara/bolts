; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131962 () Bool)

(assert start!131962)

(declare-fun b_free!31643 () Bool)

(declare-fun b_next!31643 () Bool)

(assert (=> start!131962 (= b_free!31643 (not b_next!31643))))

(declare-fun tp!111181 () Bool)

(declare-fun b_and!51063 () Bool)

(assert (=> start!131962 (= tp!111181 b_and!51063)))

(declare-datatypes ((array!103011 0))(
  ( (array!103012 (arr!49703 (Array (_ BitVec 32) (_ BitVec 64))) (size!50254 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103011)

(declare-datatypes ((V!59001 0))(
  ( (V!59002 (val!19037 Int)) )
))
(declare-fun zeroValue!436 () V!59001)

(declare-datatypes ((tuple2!24602 0))(
  ( (tuple2!24603 (_1!12311 (_ BitVec 64)) (_2!12311 V!59001)) )
))
(declare-datatypes ((List!36121 0))(
  ( (Nil!36118) (Cons!36117 (h!37563 tuple2!24602) (t!50822 List!36121)) )
))
(declare-datatypes ((ListLongMap!22223 0))(
  ( (ListLongMap!22224 (toList!11127 List!36121)) )
))
(declare-fun call!69049 () ListLongMap!22223)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18049 0))(
  ( (ValueCellFull!18049 (v!21835 V!59001)) (EmptyCell!18049) )
))
(declare-datatypes ((array!103013 0))(
  ( (array!103014 (arr!49704 (Array (_ BitVec 32) ValueCell!18049)) (size!50255 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103013)

(declare-fun bm!69044 () Bool)

(declare-fun minValue!436 () V!59001)

(declare-fun getCurrentListMapNoExtraKeys!6576 (array!103011 array!103013 (_ BitVec 32) (_ BitVec 32) V!59001 V!59001 (_ BitVec 32) Int) ListLongMap!22223)

(assert (=> bm!69044 (= call!69049 (getCurrentListMapNoExtraKeys!6576 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun call!69047 () ListLongMap!22223)

(declare-fun call!69050 () ListLongMap!22223)

(declare-fun bm!69045 () Bool)

(declare-fun c!141458 () Bool)

(declare-fun c!141456 () Bool)

(declare-fun call!69048 () ListLongMap!22223)

(declare-fun +!4859 (ListLongMap!22223 tuple2!24602) ListLongMap!22223)

(assert (=> bm!69045 (= call!69050 (+!4859 (ite c!141458 call!69049 (ite c!141456 call!69047 call!69048)) (ite (or c!141458 c!141456) (tuple2!24603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58582 () Bool)

(declare-fun mapRes!58582 () Bool)

(assert (=> mapIsEmpty!58582 mapRes!58582))

(declare-fun b!1544766 () Bool)

(declare-fun e!859873 () Bool)

(declare-fun tp_is_empty!37919 () Bool)

(assert (=> b!1544766 (= e!859873 tp_is_empty!37919)))

(declare-fun b!1544767 () Bool)

(declare-fun res!1059593 () Bool)

(declare-fun e!859867 () Bool)

(assert (=> b!1544767 (=> (not res!1059593) (not e!859867))))

(assert (=> b!1544767 (= res!1059593 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50254 _keys!618))))))

(declare-fun b!1544768 () Bool)

(declare-fun e!859868 () ListLongMap!22223)

(assert (=> b!1544768 (= e!859868 call!69048)))

(declare-fun b!1544769 () Bool)

(declare-fun e!859871 () ListLongMap!22223)

(declare-fun call!69051 () ListLongMap!22223)

(assert (=> b!1544769 (= e!859871 call!69051)))

(declare-fun res!1059590 () Bool)

(assert (=> start!131962 (=> (not res!1059590) (not e!859867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131962 (= res!1059590 (validMask!0 mask!926))))

(assert (=> start!131962 e!859867))

(declare-fun array_inv!38585 (array!103011) Bool)

(assert (=> start!131962 (array_inv!38585 _keys!618)))

(assert (=> start!131962 tp_is_empty!37919))

(assert (=> start!131962 true))

(assert (=> start!131962 tp!111181))

(declare-fun e!859870 () Bool)

(declare-fun array_inv!38586 (array!103013) Bool)

(assert (=> start!131962 (and (array_inv!38586 _values!470) e!859870)))

(declare-fun b!1544770 () Bool)

(declare-fun e!859872 () Bool)

(assert (=> b!1544770 (= e!859872 tp_is_empty!37919)))

(declare-fun b!1544771 () Bool)

(assert (=> b!1544771 (= e!859868 call!69051)))

(declare-fun b!1544772 () Bool)

(assert (=> b!1544772 (= e!859867 false)))

(declare-fun lt!666125 () ListLongMap!22223)

(declare-fun e!859866 () ListLongMap!22223)

(assert (=> b!1544772 (= lt!666125 e!859866)))

(declare-fun lt!666124 () Bool)

(assert (=> b!1544772 (= c!141458 (and (not lt!666124) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544772 (= lt!666124 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544773 () Bool)

(declare-fun res!1059592 () Bool)

(assert (=> b!1544773 (=> (not res!1059592) (not e!859867))))

(assert (=> b!1544773 (= res!1059592 (and (= (size!50255 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50254 _keys!618) (size!50255 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69046 () Bool)

(assert (=> bm!69046 (= call!69051 call!69050)))

(declare-fun bm!69047 () Bool)

(assert (=> bm!69047 (= call!69048 call!69047)))

(declare-fun b!1544774 () Bool)

(declare-fun res!1059591 () Bool)

(assert (=> b!1544774 (=> (not res!1059591) (not e!859867))))

(declare-datatypes ((List!36122 0))(
  ( (Nil!36119) (Cons!36118 (h!37564 (_ BitVec 64)) (t!50823 List!36122)) )
))
(declare-fun arrayNoDuplicates!0 (array!103011 (_ BitVec 32) List!36122) Bool)

(assert (=> b!1544774 (= res!1059591 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36119))))

(declare-fun b!1544775 () Bool)

(assert (=> b!1544775 (= e!859870 (and e!859873 mapRes!58582))))

(declare-fun condMapEmpty!58582 () Bool)

(declare-fun mapDefault!58582 () ValueCell!18049)

