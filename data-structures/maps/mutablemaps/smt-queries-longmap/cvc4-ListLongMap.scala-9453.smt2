; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112366 () Bool)

(assert start!112366)

(declare-fun b_free!30725 () Bool)

(declare-fun b_next!30725 () Bool)

(assert (=> start!112366 (= b_free!30725 (not b_next!30725))))

(declare-fun tp!107813 () Bool)

(declare-fun b_and!49515 () Bool)

(assert (=> start!112366 (= tp!107813 b_and!49515)))

(declare-fun res!883466 () Bool)

(declare-fun e!758610 () Bool)

(assert (=> start!112366 (=> (not res!883466) (not e!758610))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112366 (= res!883466 (validMask!0 mask!1998))))

(assert (=> start!112366 e!758610))

(declare-datatypes ((V!53949 0))(
  ( (V!53950 (val!18392 Int)) )
))
(declare-datatypes ((ValueCell!17419 0))(
  ( (ValueCellFull!17419 (v!21027 V!53949)) (EmptyCell!17419) )
))
(declare-datatypes ((array!90121 0))(
  ( (array!90122 (arr!43522 (Array (_ BitVec 32) ValueCell!17419)) (size!44073 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90121)

(declare-fun e!758612 () Bool)

(declare-fun array_inv!32783 (array!90121) Bool)

(assert (=> start!112366 (and (array_inv!32783 _values!1320) e!758612)))

(assert (=> start!112366 true))

(declare-datatypes ((array!90123 0))(
  ( (array!90124 (arr!43523 (Array (_ BitVec 32) (_ BitVec 64))) (size!44074 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90123)

(declare-fun array_inv!32784 (array!90123) Bool)

(assert (=> start!112366 (array_inv!32784 _keys!1590)))

(assert (=> start!112366 tp!107813))

(declare-fun tp_is_empty!36635 () Bool)

(assert (=> start!112366 tp_is_empty!36635))

(declare-fun b!1331236 () Bool)

(declare-fun res!883464 () Bool)

(assert (=> b!1331236 (=> (not res!883464) (not e!758610))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331236 (= res!883464 (validKeyInArray!0 (select (arr!43523 _keys!1590) from!1980)))))

(declare-fun b!1331237 () Bool)

(assert (=> b!1331237 (= e!758610 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!23840 0))(
  ( (tuple2!23841 (_1!11930 (_ BitVec 64)) (_2!11930 V!53949)) )
))
(declare-datatypes ((List!31026 0))(
  ( (Nil!31023) (Cons!31022 (h!32231 tuple2!23840) (t!45171 List!31026)) )
))
(declare-datatypes ((ListLongMap!21509 0))(
  ( (ListLongMap!21510 (toList!10770 List!31026)) )
))
(declare-fun lt!591431 () ListLongMap!21509)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8870 (ListLongMap!21509 (_ BitVec 64)) Bool)

(assert (=> b!1331237 (contains!8870 lt!591431 k!1153)))

(declare-datatypes ((Unit!43749 0))(
  ( (Unit!43750) )
))
(declare-fun lt!591430 () Unit!43749)

(declare-fun lt!591428 () V!53949)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!266 ((_ BitVec 64) (_ BitVec 64) V!53949 ListLongMap!21509) Unit!43749)

(assert (=> b!1331237 (= lt!591430 (lemmaInListMapAfterAddingDiffThenInBefore!266 k!1153 (select (arr!43523 _keys!1590) from!1980) lt!591428 lt!591431))))

(declare-fun lt!591429 () ListLongMap!21509)

(assert (=> b!1331237 (contains!8870 lt!591429 k!1153)))

(declare-fun lt!591427 () Unit!43749)

(declare-fun minValue!1262 () V!53949)

(assert (=> b!1331237 (= lt!591427 (lemmaInListMapAfterAddingDiffThenInBefore!266 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591429))))

(declare-fun +!4661 (ListLongMap!21509 tuple2!23840) ListLongMap!21509)

(assert (=> b!1331237 (= lt!591429 (+!4661 lt!591431 (tuple2!23841 (select (arr!43523 _keys!1590) from!1980) lt!591428)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21987 (ValueCell!17419 V!53949) V!53949)

(declare-fun dynLambda!3698 (Int (_ BitVec 64)) V!53949)

(assert (=> b!1331237 (= lt!591428 (get!21987 (select (arr!43522 _values!1320) from!1980) (dynLambda!3698 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53949)

(declare-fun getCurrentListMapNoExtraKeys!6379 (array!90123 array!90121 (_ BitVec 32) (_ BitVec 32) V!53949 V!53949 (_ BitVec 32) Int) ListLongMap!21509)

(assert (=> b!1331237 (= lt!591431 (getCurrentListMapNoExtraKeys!6379 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331238 () Bool)

(declare-fun res!883472 () Bool)

(assert (=> b!1331238 (=> (not res!883472) (not e!758610))))

(declare-fun getCurrentListMap!5693 (array!90123 array!90121 (_ BitVec 32) (_ BitVec 32) V!53949 V!53949 (_ BitVec 32) Int) ListLongMap!21509)

(assert (=> b!1331238 (= res!883472 (contains!8870 (getCurrentListMap!5693 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331239 () Bool)

(declare-fun res!883468 () Bool)

(assert (=> b!1331239 (=> (not res!883468) (not e!758610))))

(assert (=> b!1331239 (= res!883468 (not (= (select (arr!43523 _keys!1590) from!1980) k!1153)))))

(declare-fun mapIsEmpty!56626 () Bool)

(declare-fun mapRes!56626 () Bool)

(assert (=> mapIsEmpty!56626 mapRes!56626))

(declare-fun b!1331240 () Bool)

(declare-fun res!883470 () Bool)

(assert (=> b!1331240 (=> (not res!883470) (not e!758610))))

(assert (=> b!1331240 (= res!883470 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331241 () Bool)

(declare-fun e!758614 () Bool)

(assert (=> b!1331241 (= e!758614 tp_is_empty!36635)))

(declare-fun b!1331242 () Bool)

(declare-fun res!883465 () Bool)

(assert (=> b!1331242 (=> (not res!883465) (not e!758610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90123 (_ BitVec 32)) Bool)

(assert (=> b!1331242 (= res!883465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331243 () Bool)

(declare-fun e!758611 () Bool)

(assert (=> b!1331243 (= e!758612 (and e!758611 mapRes!56626))))

(declare-fun condMapEmpty!56626 () Bool)

(declare-fun mapDefault!56626 () ValueCell!17419)

