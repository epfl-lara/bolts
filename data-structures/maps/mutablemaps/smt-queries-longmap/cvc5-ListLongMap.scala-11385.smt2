; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132332 () Bool)

(assert start!132332)

(declare-fun b_free!31927 () Bool)

(declare-fun b_next!31927 () Bool)

(assert (=> start!132332 (= b_free!31927 (not b_next!31927))))

(declare-fun tp!112045 () Bool)

(declare-fun b_and!51375 () Bool)

(assert (=> start!132332 (= tp!112045 b_and!51375)))

(declare-fun b!1552160 () Bool)

(declare-fun res!1062794 () Bool)

(declare-fun e!864115 () Bool)

(assert (=> b!1552160 (=> (not res!1062794) (not e!864115))))

(declare-datatypes ((array!103565 0))(
  ( (array!103566 (arr!49976 (Array (_ BitVec 32) (_ BitVec 64))) (size!50527 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103565)

(declare-datatypes ((List!36353 0))(
  ( (Nil!36350) (Cons!36349 (h!37795 (_ BitVec 64)) (t!51074 List!36353)) )
))
(declare-fun arrayNoDuplicates!0 (array!103565 (_ BitVec 32) List!36353) Bool)

(assert (=> b!1552160 (= res!1062794 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36350))))

(declare-fun b!1552161 () Bool)

(declare-datatypes ((Unit!51630 0))(
  ( (Unit!51631) )
))
(declare-fun e!864106 () Unit!51630)

(declare-fun Unit!51632 () Unit!51630)

(assert (=> b!1552161 (= e!864106 Unit!51632)))

(declare-datatypes ((V!59381 0))(
  ( (V!59382 (val!19179 Int)) )
))
(declare-datatypes ((tuple2!24874 0))(
  ( (tuple2!24875 (_1!12447 (_ BitVec 64)) (_2!12447 V!59381)) )
))
(declare-datatypes ((List!36354 0))(
  ( (Nil!36351) (Cons!36350 (h!37796 tuple2!24874) (t!51075 List!36354)) )
))
(declare-datatypes ((ListLongMap!22495 0))(
  ( (ListLongMap!22496 (toList!11263 List!36354)) )
))
(declare-fun call!71224 () ListLongMap!22495)

(declare-fun zeroValue!436 () V!59381)

(declare-fun call!71226 () ListLongMap!22495)

(declare-fun c!142889 () Bool)

(declare-fun call!71222 () ListLongMap!22495)

(declare-fun minValue!436 () V!59381)

(declare-fun call!71225 () ListLongMap!22495)

(declare-fun c!142887 () Bool)

(declare-fun bm!71219 () Bool)

(declare-fun +!4969 (ListLongMap!22495 tuple2!24874) ListLongMap!22495)

(assert (=> bm!71219 (= call!71222 (+!4969 (ite c!142889 call!71225 (ite c!142887 call!71226 call!71224)) (ite (or c!142889 c!142887) (tuple2!24875 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18191 0))(
  ( (ValueCellFull!18191 (v!21981 V!59381)) (EmptyCell!18191) )
))
(declare-datatypes ((array!103567 0))(
  ( (array!103568 (arr!49977 (Array (_ BitVec 32) ValueCell!18191)) (size!50528 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103567)

(declare-fun bm!71220 () Bool)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6686 (array!103565 array!103567 (_ BitVec 32) (_ BitVec 32) V!59381 V!59381 (_ BitVec 32) Int) ListLongMap!22495)

(assert (=> bm!71220 (= call!71225 (getCurrentListMapNoExtraKeys!6686 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552162 () Bool)

(declare-fun e!864116 () ListLongMap!22495)

(declare-fun call!71223 () ListLongMap!22495)

(assert (=> b!1552162 (= e!864116 call!71223)))

(declare-fun b!1552163 () Bool)

(declare-fun res!1062791 () Bool)

(assert (=> b!1552163 (=> (not res!1062791) (not e!864115))))

(assert (=> b!1552163 (= res!1062791 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50527 _keys!618))))))

(declare-fun mapIsEmpty!59020 () Bool)

(declare-fun mapRes!59020 () Bool)

(assert (=> mapIsEmpty!59020 mapRes!59020))

(declare-fun b!1552164 () Bool)

(declare-fun e!864111 () Bool)

(assert (=> b!1552164 (= e!864115 e!864111)))

(declare-fun res!1062795 () Bool)

(assert (=> b!1552164 (=> (not res!1062795) (not e!864111))))

(declare-fun lt!669126 () Bool)

(assert (=> b!1552164 (= res!1062795 (not lt!669126))))

(declare-fun lt!669119 () Unit!51630)

(assert (=> b!1552164 (= lt!669119 e!864106)))

(declare-fun c!142886 () Bool)

(assert (=> b!1552164 (= c!142886 (not lt!669126))))

(declare-fun e!864110 () Bool)

(assert (=> b!1552164 (= lt!669126 e!864110)))

(declare-fun res!1062792 () Bool)

(assert (=> b!1552164 (=> res!1062792 e!864110)))

(assert (=> b!1552164 (= res!1062792 (bvsge from!762 (size!50527 _keys!618)))))

(declare-fun lt!669128 () ListLongMap!22495)

(declare-fun e!864109 () ListLongMap!22495)

(assert (=> b!1552164 (= lt!669128 e!864109)))

(declare-fun lt!669124 () Bool)

(assert (=> b!1552164 (= c!142889 (and (not lt!669124) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552164 (= lt!669124 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1552165 () Bool)

(declare-fun res!1062788 () Bool)

(assert (=> b!1552165 (=> (not res!1062788) (not e!864115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103565 (_ BitVec 32)) Bool)

(assert (=> b!1552165 (= res!1062788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1552166 () Bool)

(declare-fun e!864112 () ListLongMap!22495)

(assert (=> b!1552166 (= e!864112 call!71224)))

(declare-fun b!1552167 () Bool)

(declare-fun e!864114 () Bool)

(declare-fun tp_is_empty!38203 () Bool)

(assert (=> b!1552167 (= e!864114 tp_is_empty!38203)))

(declare-fun b!1552168 () Bool)

(declare-fun lt!669127 () Unit!51630)

(assert (=> b!1552168 (= e!864106 lt!669127)))

(declare-fun lt!669123 () ListLongMap!22495)

(assert (=> b!1552168 (= lt!669123 (getCurrentListMapNoExtraKeys!6686 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669121 () Unit!51630)

(declare-fun addStillContains!1304 (ListLongMap!22495 (_ BitVec 64) V!59381 (_ BitVec 64)) Unit!51630)

(assert (=> b!1552168 (= lt!669121 (addStillContains!1304 lt!669123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49976 _keys!618) from!762)))))

(declare-fun lt!669129 () ListLongMap!22495)

(assert (=> b!1552168 (= lt!669129 (+!4969 lt!669123 (tuple2!24875 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10133 (ListLongMap!22495 (_ BitVec 64)) Bool)

(assert (=> b!1552168 (contains!10133 lt!669129 (select (arr!49976 _keys!618) from!762))))

(declare-fun addApplyDifferent!637 (ListLongMap!22495 (_ BitVec 64) V!59381 (_ BitVec 64)) Unit!51630)

(assert (=> b!1552168 (= lt!669127 (addApplyDifferent!637 lt!669123 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49976 _keys!618) from!762)))))

(declare-fun lt!669120 () V!59381)

(declare-fun apply!1136 (ListLongMap!22495 (_ BitVec 64)) V!59381)

(assert (=> b!1552168 (= lt!669120 (apply!1136 (+!4969 lt!669123 (tuple2!24875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49976 _keys!618) from!762)))))

(declare-fun lt!669122 () V!59381)

(assert (=> b!1552168 (= lt!669122 (apply!1136 lt!669123 (select (arr!49976 _keys!618) from!762)))))

(assert (=> b!1552168 (= lt!669120 lt!669122)))

(declare-fun lt!669125 () Unit!51630)

(assert (=> b!1552168 (= lt!669125 (addApplyDifferent!637 lt!669123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49976 _keys!618) from!762)))))

(assert (=> b!1552168 (= (apply!1136 lt!669129 (select (arr!49976 _keys!618) from!762)) lt!669122)))

(declare-fun b!1552169 () Bool)

(assert (=> b!1552169 (= e!864111 (bvsge from!762 (size!50528 _values!470)))))

(declare-fun b!1552170 () Bool)

(declare-fun e!864107 () Bool)

(assert (=> b!1552170 (= e!864107 tp_is_empty!38203)))

(declare-fun mapNonEmpty!59020 () Bool)

(declare-fun tp!112046 () Bool)

(assert (=> mapNonEmpty!59020 (= mapRes!59020 (and tp!112046 e!864107))))

(declare-fun mapValue!59020 () ValueCell!18191)

(declare-fun mapRest!59020 () (Array (_ BitVec 32) ValueCell!18191))

(declare-fun mapKey!59020 () (_ BitVec 32))

(assert (=> mapNonEmpty!59020 (= (arr!49977 _values!470) (store mapRest!59020 mapKey!59020 mapValue!59020))))

(declare-fun b!1552171 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552171 (= e!864110 (not (validKeyInArray!0 (select (arr!49976 _keys!618) from!762))))))

(declare-fun res!1062789 () Bool)

(assert (=> start!132332 (=> (not res!1062789) (not e!864115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132332 (= res!1062789 (validMask!0 mask!926))))

(assert (=> start!132332 e!864115))

(declare-fun array_inv!38773 (array!103565) Bool)

(assert (=> start!132332 (array_inv!38773 _keys!618)))

(assert (=> start!132332 tp_is_empty!38203))

(assert (=> start!132332 true))

(assert (=> start!132332 tp!112045))

(declare-fun e!864113 () Bool)

(declare-fun array_inv!38774 (array!103567) Bool)

(assert (=> start!132332 (and (array_inv!38774 _values!470) e!864113)))

(declare-fun bm!71221 () Bool)

(assert (=> bm!71221 (= call!71223 call!71222)))

(declare-fun bm!71222 () Bool)

(assert (=> bm!71222 (= call!71224 call!71226)))

(declare-fun bm!71223 () Bool)

(assert (=> bm!71223 (= call!71226 call!71225)))

(declare-fun b!1552172 () Bool)

(declare-fun c!142888 () Bool)

(assert (=> b!1552172 (= c!142888 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669124))))

(assert (=> b!1552172 (= e!864116 e!864112)))

(declare-fun b!1552173 () Bool)

(declare-fun res!1062790 () Bool)

(assert (=> b!1552173 (=> (not res!1062790) (not e!864111))))

(assert (=> b!1552173 (= res!1062790 (contains!10133 lt!669128 (select (arr!49976 _keys!618) from!762)))))

(declare-fun b!1552174 () Bool)

(assert (=> b!1552174 (= e!864109 (+!4969 call!71222 (tuple2!24875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552175 () Bool)

(assert (=> b!1552175 (= e!864112 call!71223)))

(declare-fun b!1552176 () Bool)

(assert (=> b!1552176 (= e!864113 (and e!864114 mapRes!59020))))

(declare-fun condMapEmpty!59020 () Bool)

(declare-fun mapDefault!59020 () ValueCell!18191)

