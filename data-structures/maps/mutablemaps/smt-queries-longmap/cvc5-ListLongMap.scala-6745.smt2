; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84576 () Bool)

(assert start!84576)

(declare-fun b_free!20029 () Bool)

(declare-fun b_next!20029 () Bool)

(assert (=> start!84576 (= b_free!20029 (not b_next!20029))))

(declare-fun tp!69875 () Bool)

(declare-fun b_and!32145 () Bool)

(assert (=> start!84576 (= tp!69875 b_and!32145)))

(declare-fun b!988687 () Bool)

(declare-fun res!661370 () Bool)

(declare-fun e!557536 () Bool)

(assert (=> b!988687 (=> (not res!661370) (not e!557536))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!988687 (= res!661370 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!661368 () Bool)

(assert (=> start!84576 (=> (not res!661368) (not e!557536))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84576 (= res!661368 (validMask!0 mask!1948))))

(assert (=> start!84576 e!557536))

(assert (=> start!84576 true))

(declare-fun tp_is_empty!23245 () Bool)

(assert (=> start!84576 tp_is_empty!23245))

(declare-datatypes ((V!35977 0))(
  ( (V!35978 (val!11673 Int)) )
))
(declare-datatypes ((ValueCell!11141 0))(
  ( (ValueCellFull!11141 (v!14240 V!35977)) (EmptyCell!11141) )
))
(declare-datatypes ((array!62439 0))(
  ( (array!62440 (arr!30069 (Array (_ BitVec 32) ValueCell!11141)) (size!30549 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62439)

(declare-fun e!557535 () Bool)

(declare-fun array_inv!23087 (array!62439) Bool)

(assert (=> start!84576 (and (array_inv!23087 _values!1278) e!557535)))

(assert (=> start!84576 tp!69875))

(declare-datatypes ((array!62441 0))(
  ( (array!62442 (arr!30070 (Array (_ BitVec 32) (_ BitVec 64))) (size!30550 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62441)

(declare-fun array_inv!23088 (array!62441) Bool)

(assert (=> start!84576 (array_inv!23088 _keys!1544)))

(declare-fun b!988688 () Bool)

(declare-fun res!661369 () Bool)

(assert (=> b!988688 (=> (not res!661369) (not e!557536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62441 (_ BitVec 32)) Bool)

(assert (=> b!988688 (= res!661369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988689 () Bool)

(declare-fun res!661367 () Bool)

(assert (=> b!988689 (=> (not res!661367) (not e!557536))))

(declare-datatypes ((List!20923 0))(
  ( (Nil!20920) (Cons!20919 (h!22081 (_ BitVec 64)) (t!29872 List!20923)) )
))
(declare-fun arrayNoDuplicates!0 (array!62441 (_ BitVec 32) List!20923) Bool)

(assert (=> b!988689 (= res!661367 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20920))))

(declare-fun b!988690 () Bool)

(declare-fun e!557538 () Bool)

(assert (=> b!988690 (= e!557538 tp_is_empty!23245)))

(declare-fun b!988691 () Bool)

(declare-fun e!557534 () Bool)

(assert (=> b!988691 (= e!557534 (not true))))

(declare-fun minValue!1220 () V!35977)

(declare-fun zeroValue!1220 () V!35977)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((tuple2!14972 0))(
  ( (tuple2!14973 (_1!7496 (_ BitVec 64)) (_2!7496 V!35977)) )
))
(declare-datatypes ((List!20924 0))(
  ( (Nil!20921) (Cons!20920 (h!22082 tuple2!14972) (t!29873 List!20924)) )
))
(declare-datatypes ((ListLongMap!13683 0))(
  ( (ListLongMap!13684 (toList!6857 List!20924)) )
))
(declare-fun lt!438538 () ListLongMap!13683)

(declare-fun getCurrentListMap!3871 (array!62441 array!62439 (_ BitVec 32) (_ BitVec 32) V!35977 V!35977 (_ BitVec 32) Int) ListLongMap!13683)

(assert (=> b!988691 (= lt!438538 (getCurrentListMap!3871 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438537 () ListLongMap!13683)

(declare-fun lt!438535 () tuple2!14972)

(declare-fun lt!438540 () tuple2!14972)

(declare-fun +!3039 (ListLongMap!13683 tuple2!14972) ListLongMap!13683)

(assert (=> b!988691 (= (+!3039 (+!3039 lt!438537 lt!438535) lt!438540) (+!3039 (+!3039 lt!438537 lt!438540) lt!438535))))

(declare-fun lt!438539 () V!35977)

(assert (=> b!988691 (= lt!438540 (tuple2!14973 (select (arr!30070 _keys!1544) from!1932) lt!438539))))

(assert (=> b!988691 (= lt!438535 (tuple2!14973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32765 0))(
  ( (Unit!32766) )
))
(declare-fun lt!438536 () Unit!32765)

(declare-fun addCommutativeForDiffKeys!694 (ListLongMap!13683 (_ BitVec 64) V!35977 (_ BitVec 64) V!35977) Unit!32765)

(assert (=> b!988691 (= lt!438536 (addCommutativeForDiffKeys!694 lt!438537 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30070 _keys!1544) from!1932) lt!438539))))

(declare-fun b!988692 () Bool)

(declare-fun e!557537 () Bool)

(assert (=> b!988692 (= e!557537 tp_is_empty!23245)))

(declare-fun b!988693 () Bool)

(declare-fun res!661371 () Bool)

(assert (=> b!988693 (=> (not res!661371) (not e!557536))))

(assert (=> b!988693 (= res!661371 (and (= (size!30549 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30550 _keys!1544) (size!30549 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36909 () Bool)

(declare-fun mapRes!36909 () Bool)

(assert (=> mapIsEmpty!36909 mapRes!36909))

(declare-fun b!988694 () Bool)

(assert (=> b!988694 (= e!557536 e!557534)))

(declare-fun res!661366 () Bool)

(assert (=> b!988694 (=> (not res!661366) (not e!557534))))

(assert (=> b!988694 (= res!661366 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30070 _keys!1544) from!1932))))))

(declare-fun get!15621 (ValueCell!11141 V!35977) V!35977)

(declare-fun dynLambda!1867 (Int (_ BitVec 64)) V!35977)

(assert (=> b!988694 (= lt!438539 (get!15621 (select (arr!30069 _values!1278) from!1932) (dynLambda!1867 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3507 (array!62441 array!62439 (_ BitVec 32) (_ BitVec 32) V!35977 V!35977 (_ BitVec 32) Int) ListLongMap!13683)

(assert (=> b!988694 (= lt!438537 (getCurrentListMapNoExtraKeys!3507 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988695 () Bool)

(declare-fun res!661372 () Bool)

(assert (=> b!988695 (=> (not res!661372) (not e!557536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988695 (= res!661372 (validKeyInArray!0 (select (arr!30070 _keys!1544) from!1932)))))

(declare-fun b!988696 () Bool)

(assert (=> b!988696 (= e!557535 (and e!557537 mapRes!36909))))

(declare-fun condMapEmpty!36909 () Bool)

(declare-fun mapDefault!36909 () ValueCell!11141)

