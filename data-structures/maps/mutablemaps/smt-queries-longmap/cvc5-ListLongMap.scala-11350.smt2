; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132036 () Bool)

(assert start!132036)

(declare-fun b_free!31717 () Bool)

(declare-fun b_next!31717 () Bool)

(assert (=> start!132036 (= b_free!31717 (not b_next!31717))))

(declare-fun tp!111404 () Bool)

(declare-fun b_and!51137 () Bool)

(assert (=> start!132036 (= tp!111404 b_and!51137)))

(declare-fun b!1546522 () Bool)

(declare-fun res!1060352 () Bool)

(declare-fun e!860861 () Bool)

(assert (=> b!1546522 (=> (not res!1060352) (not e!860861))))

(declare-datatypes ((array!103153 0))(
  ( (array!103154 (arr!49774 (Array (_ BitVec 32) (_ BitVec 64))) (size!50325 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103153)

(declare-datatypes ((List!36183 0))(
  ( (Nil!36180) (Cons!36179 (h!37625 (_ BitVec 64)) (t!50884 List!36183)) )
))
(declare-fun arrayNoDuplicates!0 (array!103153 (_ BitVec 32) List!36183) Bool)

(assert (=> b!1546522 (= res!1060352 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36180))))

(declare-fun mapNonEmpty!58693 () Bool)

(declare-fun mapRes!58693 () Bool)

(declare-fun tp!111403 () Bool)

(declare-fun e!860858 () Bool)

(assert (=> mapNonEmpty!58693 (= mapRes!58693 (and tp!111403 e!860858))))

(declare-datatypes ((V!59101 0))(
  ( (V!59102 (val!19074 Int)) )
))
(declare-datatypes ((ValueCell!18086 0))(
  ( (ValueCellFull!18086 (v!21872 V!59101)) (EmptyCell!18086) )
))
(declare-fun mapValue!58693 () ValueCell!18086)

(declare-datatypes ((array!103155 0))(
  ( (array!103156 (arr!49775 (Array (_ BitVec 32) ValueCell!18086)) (size!50326 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103155)

(declare-fun mapKey!58693 () (_ BitVec 32))

(declare-fun mapRest!58693 () (Array (_ BitVec 32) ValueCell!18086))

(assert (=> mapNonEmpty!58693 (= (arr!49775 _values!470) (store mapRest!58693 mapKey!58693 mapValue!58693))))

(declare-fun b!1546523 () Bool)

(declare-fun e!860863 () Bool)

(assert (=> b!1546523 (= e!860861 e!860863)))

(declare-fun res!1060347 () Bool)

(assert (=> b!1546523 (=> (not res!1060347) (not e!860863))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1546523 (= res!1060347 (bvslt from!762 (size!50325 _keys!618)))))

(declare-datatypes ((tuple2!24672 0))(
  ( (tuple2!24673 (_1!12346 (_ BitVec 64)) (_2!12346 V!59101)) )
))
(declare-datatypes ((List!36184 0))(
  ( (Nil!36181) (Cons!36180 (h!37626 tuple2!24672) (t!50885 List!36184)) )
))
(declare-datatypes ((ListLongMap!22293 0))(
  ( (ListLongMap!22294 (toList!11162 List!36184)) )
))
(declare-fun lt!666551 () ListLongMap!22293)

(declare-fun e!860862 () ListLongMap!22293)

(assert (=> b!1546523 (= lt!666551 e!860862)))

(declare-fun c!141789 () Bool)

(declare-fun lt!666552 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1546523 (= c!141789 (and (not lt!666552) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546523 (= lt!666552 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69599 () Bool)

(declare-fun call!69606 () ListLongMap!22293)

(declare-fun call!69603 () ListLongMap!22293)

(assert (=> bm!69599 (= call!69606 call!69603)))

(declare-fun b!1546524 () Bool)

(declare-fun res!1060350 () Bool)

(assert (=> b!1546524 (=> (not res!1060350) (not e!860861))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103153 (_ BitVec 32)) Bool)

(assert (=> b!1546524 (= res!1060350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546525 () Bool)

(declare-fun e!860857 () Bool)

(declare-fun tp_is_empty!37993 () Bool)

(assert (=> b!1546525 (= e!860857 tp_is_empty!37993)))

(declare-fun b!1546526 () Bool)

(declare-fun res!1060346 () Bool)

(assert (=> b!1546526 (=> (not res!1060346) (not e!860861))))

(assert (=> b!1546526 (= res!1060346 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50325 _keys!618))))))

(declare-fun bm!69600 () Bool)

(declare-fun call!69605 () ListLongMap!22293)

(declare-fun call!69602 () ListLongMap!22293)

(assert (=> bm!69600 (= call!69605 call!69602)))

(declare-fun b!1546527 () Bool)

(declare-fun res!1060351 () Bool)

(assert (=> b!1546527 (=> (not res!1060351) (not e!860861))))

(assert (=> b!1546527 (= res!1060351 (and (= (size!50326 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50325 _keys!618) (size!50326 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59101)

(declare-fun call!69604 () ListLongMap!22293)

(declare-fun c!141790 () Bool)

(declare-fun bm!69601 () Bool)

(declare-fun minValue!436 () V!59101)

(declare-fun +!4890 (ListLongMap!22293 tuple2!24672) ListLongMap!22293)

(assert (=> bm!69601 (= call!69602 (+!4890 (ite c!141789 call!69604 (ite c!141790 call!69603 call!69606)) (ite (or c!141789 c!141790) (tuple2!24673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58693 () Bool)

(assert (=> mapIsEmpty!58693 mapRes!58693))

(declare-fun b!1546528 () Bool)

(declare-fun res!1060349 () Bool)

(assert (=> b!1546528 (=> (not res!1060349) (not e!860863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546528 (= res!1060349 (validKeyInArray!0 (select (arr!49774 _keys!618) from!762)))))

(declare-fun b!1546529 () Bool)

(declare-fun e!860855 () ListLongMap!22293)

(assert (=> b!1546529 (= e!860855 call!69605)))

(declare-fun res!1060348 () Bool)

(assert (=> start!132036 (=> (not res!1060348) (not e!860861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132036 (= res!1060348 (validMask!0 mask!926))))

(assert (=> start!132036 e!860861))

(declare-fun array_inv!38635 (array!103153) Bool)

(assert (=> start!132036 (array_inv!38635 _keys!618)))

(assert (=> start!132036 tp_is_empty!37993))

(assert (=> start!132036 true))

(assert (=> start!132036 tp!111404))

(declare-fun e!860856 () Bool)

(declare-fun array_inv!38636 (array!103155) Bool)

(assert (=> start!132036 (and (array_inv!38636 _values!470) e!860856)))

(declare-fun b!1546530 () Bool)

(declare-fun e!860860 () ListLongMap!22293)

(assert (=> b!1546530 (= e!860860 call!69605)))

(declare-fun b!1546531 () Bool)

(declare-fun c!141791 () Bool)

(assert (=> b!1546531 (= c!141791 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666552))))

(assert (=> b!1546531 (= e!860860 e!860855)))

(declare-fun b!1546532 () Bool)

(assert (=> b!1546532 (= e!860856 (and e!860857 mapRes!58693))))

(declare-fun condMapEmpty!58693 () Bool)

(declare-fun mapDefault!58693 () ValueCell!18086)

