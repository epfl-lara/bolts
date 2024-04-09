; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113276 () Bool)

(assert start!113276)

(declare-fun b_free!31291 () Bool)

(declare-fun b_next!31291 () Bool)

(assert (=> start!113276 (= b_free!31291 (not b_next!31291))))

(declare-fun tp!109679 () Bool)

(declare-fun b_and!50499 () Bool)

(assert (=> start!113276 (= tp!109679 b_and!50499)))

(declare-fun b!1343322 () Bool)

(declare-fun res!891353 () Bool)

(declare-fun e!764634 () Bool)

(assert (=> b!1343322 (=> (not res!891353) (not e!764634))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343322 (= res!891353 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343323 () Bool)

(declare-fun e!764633 () Bool)

(declare-fun tp_is_empty!37291 () Bool)

(assert (=> b!1343323 (= e!764633 tp_is_empty!37291)))

(declare-fun b!1343324 () Bool)

(assert (=> b!1343324 (= e!764634 (not true))))

(declare-datatypes ((V!54825 0))(
  ( (V!54826 (val!18720 Int)) )
))
(declare-datatypes ((tuple2!24266 0))(
  ( (tuple2!24267 (_1!12143 (_ BitVec 64)) (_2!12143 V!54825)) )
))
(declare-datatypes ((List!31443 0))(
  ( (Nil!31440) (Cons!31439 (h!32648 tuple2!24266) (t!45952 List!31443)) )
))
(declare-datatypes ((ListLongMap!21935 0))(
  ( (ListLongMap!21936 (toList!10983 List!31443)) )
))
(declare-fun lt!594850 () ListLongMap!21935)

(declare-fun zeroValue!1245 () V!54825)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9095 (ListLongMap!21935 (_ BitVec 64)) Bool)

(declare-fun +!4781 (ListLongMap!21935 tuple2!24266) ListLongMap!21935)

(assert (=> b!1343324 (contains!9095 (+!4781 lt!594850 (tuple2!24267 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44027 0))(
  ( (Unit!44028) )
))
(declare-fun lt!594853 () Unit!44027)

(declare-fun addStillContains!1207 (ListLongMap!21935 (_ BitVec 64) V!54825 (_ BitVec 64)) Unit!44027)

(assert (=> b!1343324 (= lt!594853 (addStillContains!1207 lt!594850 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343324 (contains!9095 lt!594850 k!1142)))

(declare-datatypes ((array!91383 0))(
  ( (array!91384 (arr!44143 (Array (_ BitVec 32) (_ BitVec 64))) (size!44694 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91383)

(declare-fun lt!594851 () Unit!44027)

(declare-fun lt!594849 () V!54825)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!373 ((_ BitVec 64) (_ BitVec 64) V!54825 ListLongMap!21935) Unit!44027)

(assert (=> b!1343324 (= lt!594851 (lemmaInListMapAfterAddingDiffThenInBefore!373 k!1142 (select (arr!44143 _keys!1571) from!1960) lt!594849 lt!594850))))

(declare-fun lt!594848 () ListLongMap!21935)

(assert (=> b!1343324 (contains!9095 lt!594848 k!1142)))

(declare-fun lt!594852 () Unit!44027)

(assert (=> b!1343324 (= lt!594852 (lemmaInListMapAfterAddingDiffThenInBefore!373 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594848))))

(assert (=> b!1343324 (= lt!594848 (+!4781 lt!594850 (tuple2!24267 (select (arr!44143 _keys!1571) from!1960) lt!594849)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17747 0))(
  ( (ValueCellFull!17747 (v!21366 V!54825)) (EmptyCell!17747) )
))
(declare-datatypes ((array!91385 0))(
  ( (array!91386 (arr!44144 (Array (_ BitVec 32) ValueCell!17747)) (size!44695 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91385)

(declare-fun get!22340 (ValueCell!17747 V!54825) V!54825)

(declare-fun dynLambda!3818 (Int (_ BitVec 64)) V!54825)

(assert (=> b!1343324 (= lt!594849 (get!22340 (select (arr!44144 _values!1303) from!1960) (dynLambda!3818 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54825)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6504 (array!91383 array!91385 (_ BitVec 32) (_ BitVec 32) V!54825 V!54825 (_ BitVec 32) Int) ListLongMap!21935)

(assert (=> b!1343324 (= lt!594850 (getCurrentListMapNoExtraKeys!6504 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun res!891348 () Bool)

(assert (=> start!113276 (=> (not res!891348) (not e!764634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113276 (= res!891348 (validMask!0 mask!1977))))

(assert (=> start!113276 e!764634))

(assert (=> start!113276 tp_is_empty!37291))

(assert (=> start!113276 true))

(declare-fun array_inv!33191 (array!91383) Bool)

(assert (=> start!113276 (array_inv!33191 _keys!1571)))

(declare-fun e!764636 () Bool)

(declare-fun array_inv!33192 (array!91385) Bool)

(assert (=> start!113276 (and (array_inv!33192 _values!1303) e!764636)))

(assert (=> start!113276 tp!109679))

(declare-fun b!1343325 () Bool)

(declare-fun res!891349 () Bool)

(assert (=> b!1343325 (=> (not res!891349) (not e!764634))))

(assert (=> b!1343325 (= res!891349 (not (= (select (arr!44143 _keys!1571) from!1960) k!1142)))))

(declare-fun mapNonEmpty!57643 () Bool)

(declare-fun mapRes!57643 () Bool)

(declare-fun tp!109678 () Bool)

(assert (=> mapNonEmpty!57643 (= mapRes!57643 (and tp!109678 e!764633))))

(declare-fun mapValue!57643 () ValueCell!17747)

(declare-fun mapRest!57643 () (Array (_ BitVec 32) ValueCell!17747))

(declare-fun mapKey!57643 () (_ BitVec 32))

(assert (=> mapNonEmpty!57643 (= (arr!44144 _values!1303) (store mapRest!57643 mapKey!57643 mapValue!57643))))

(declare-fun b!1343326 () Bool)

(declare-fun res!891351 () Bool)

(assert (=> b!1343326 (=> (not res!891351) (not e!764634))))

(declare-datatypes ((List!31444 0))(
  ( (Nil!31441) (Cons!31440 (h!32649 (_ BitVec 64)) (t!45953 List!31444)) )
))
(declare-fun arrayNoDuplicates!0 (array!91383 (_ BitVec 32) List!31444) Bool)

(assert (=> b!1343326 (= res!891351 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31441))))

(declare-fun b!1343327 () Bool)

(declare-fun e!764635 () Bool)

(assert (=> b!1343327 (= e!764635 tp_is_empty!37291)))

(declare-fun b!1343328 () Bool)

(declare-fun res!891346 () Bool)

(assert (=> b!1343328 (=> (not res!891346) (not e!764634))))

(declare-fun getCurrentListMap!5878 (array!91383 array!91385 (_ BitVec 32) (_ BitVec 32) V!54825 V!54825 (_ BitVec 32) Int) ListLongMap!21935)

(assert (=> b!1343328 (= res!891346 (contains!9095 (getCurrentListMap!5878 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343329 () Bool)

(declare-fun res!891350 () Bool)

(assert (=> b!1343329 (=> (not res!891350) (not e!764634))))

(assert (=> b!1343329 (= res!891350 (and (= (size!44695 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44694 _keys!1571) (size!44695 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343330 () Bool)

(declare-fun res!891345 () Bool)

(assert (=> b!1343330 (=> (not res!891345) (not e!764634))))

(assert (=> b!1343330 (= res!891345 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44694 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57643 () Bool)

(assert (=> mapIsEmpty!57643 mapRes!57643))

(declare-fun b!1343331 () Bool)

(declare-fun res!891352 () Bool)

(assert (=> b!1343331 (=> (not res!891352) (not e!764634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91383 (_ BitVec 32)) Bool)

(assert (=> b!1343331 (= res!891352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343332 () Bool)

(assert (=> b!1343332 (= e!764636 (and e!764635 mapRes!57643))))

(declare-fun condMapEmpty!57643 () Bool)

(declare-fun mapDefault!57643 () ValueCell!17747)

