; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84062 () Bool)

(assert start!84062)

(declare-fun b_free!19789 () Bool)

(declare-fun b_next!19789 () Bool)

(assert (=> start!84062 (= b_free!19789 (not b_next!19789))))

(declare-fun tp!68891 () Bool)

(declare-fun b_and!31679 () Bool)

(assert (=> start!84062 (= tp!68891 b_and!31679)))

(declare-fun b!982199 () Bool)

(declare-fun e!553699 () Bool)

(assert (=> b!982199 (= e!553699 (not true))))

(declare-datatypes ((V!35433 0))(
  ( (V!35434 (val!11469 Int)) )
))
(declare-datatypes ((tuple2!14796 0))(
  ( (tuple2!14797 (_1!7408 (_ BitVec 64)) (_2!7408 V!35433)) )
))
(declare-datatypes ((List!20703 0))(
  ( (Nil!20700) (Cons!20699 (h!21861 tuple2!14796) (t!29450 List!20703)) )
))
(declare-datatypes ((ListLongMap!13507 0))(
  ( (ListLongMap!13508 (toList!6769 List!20703)) )
))
(declare-fun lt!436041 () ListLongMap!13507)

(declare-fun lt!436043 () tuple2!14796)

(declare-fun lt!436045 () tuple2!14796)

(declare-fun +!2971 (ListLongMap!13507 tuple2!14796) ListLongMap!13507)

(assert (=> b!982199 (= (+!2971 (+!2971 lt!436041 lt!436043) lt!436045) (+!2971 (+!2971 lt!436041 lt!436045) lt!436043))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun lt!436044 () V!35433)

(declare-datatypes ((array!61661 0))(
  ( (array!61662 (arr!29684 (Array (_ BitVec 32) (_ BitVec 64))) (size!30164 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61661)

(assert (=> b!982199 (= lt!436045 (tuple2!14797 (select (arr!29684 _keys!1544) from!1932) lt!436044))))

(declare-fun zeroValue!1220 () V!35433)

(assert (=> b!982199 (= lt!436043 (tuple2!14797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32617 0))(
  ( (Unit!32618) )
))
(declare-fun lt!436042 () Unit!32617)

(declare-fun addCommutativeForDiffKeys!633 (ListLongMap!13507 (_ BitVec 64) V!35433 (_ BitVec 64) V!35433) Unit!32617)

(assert (=> b!982199 (= lt!436042 (addCommutativeForDiffKeys!633 lt!436041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29684 _keys!1544) from!1932) lt!436044))))

(declare-fun b!982200 () Bool)

(declare-fun e!553695 () Bool)

(declare-fun tp_is_empty!22837 () Bool)

(assert (=> b!982200 (= e!553695 tp_is_empty!22837)))

(declare-fun mapIsEmpty!36284 () Bool)

(declare-fun mapRes!36284 () Bool)

(assert (=> mapIsEmpty!36284 mapRes!36284))

(declare-fun b!982201 () Bool)

(declare-fun res!657394 () Bool)

(declare-fun e!553697 () Bool)

(assert (=> b!982201 (=> (not res!657394) (not e!553697))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61661 (_ BitVec 32)) Bool)

(assert (=> b!982201 (= res!657394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982202 () Bool)

(declare-fun e!553700 () Bool)

(assert (=> b!982202 (= e!553700 tp_is_empty!22837)))

(declare-fun b!982203 () Bool)

(assert (=> b!982203 (= e!553697 e!553699)))

(declare-fun res!657396 () Bool)

(assert (=> b!982203 (=> (not res!657396) (not e!553699))))

(assert (=> b!982203 (= res!657396 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29684 _keys!1544) from!1932))))))

(declare-datatypes ((ValueCell!10937 0))(
  ( (ValueCellFull!10937 (v!14031 V!35433)) (EmptyCell!10937) )
))
(declare-datatypes ((array!61663 0))(
  ( (array!61664 (arr!29685 (Array (_ BitVec 32) ValueCell!10937)) (size!30165 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61663)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15414 (ValueCell!10937 V!35433) V!35433)

(declare-fun dynLambda!1801 (Int (_ BitVec 64)) V!35433)

(assert (=> b!982203 (= lt!436044 (get!15414 (select (arr!29685 _values!1278) from!1932) (dynLambda!1801 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35433)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3428 (array!61661 array!61663 (_ BitVec 32) (_ BitVec 32) V!35433 V!35433 (_ BitVec 32) Int) ListLongMap!13507)

(assert (=> b!982203 (= lt!436041 (getCurrentListMapNoExtraKeys!3428 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982204 () Bool)

(declare-fun res!657398 () Bool)

(assert (=> b!982204 (=> (not res!657398) (not e!553697))))

(assert (=> b!982204 (= res!657398 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982205 () Bool)

(declare-fun res!657392 () Bool)

(assert (=> b!982205 (=> (not res!657392) (not e!553697))))

(declare-datatypes ((List!20704 0))(
  ( (Nil!20701) (Cons!20700 (h!21862 (_ BitVec 64)) (t!29451 List!20704)) )
))
(declare-fun arrayNoDuplicates!0 (array!61661 (_ BitVec 32) List!20704) Bool)

(assert (=> b!982205 (= res!657392 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20701))))

(declare-fun mapNonEmpty!36284 () Bool)

(declare-fun tp!68890 () Bool)

(assert (=> mapNonEmpty!36284 (= mapRes!36284 (and tp!68890 e!553700))))

(declare-fun mapKey!36284 () (_ BitVec 32))

(declare-fun mapRest!36284 () (Array (_ BitVec 32) ValueCell!10937))

(declare-fun mapValue!36284 () ValueCell!10937)

(assert (=> mapNonEmpty!36284 (= (arr!29685 _values!1278) (store mapRest!36284 mapKey!36284 mapValue!36284))))

(declare-fun res!657399 () Bool)

(assert (=> start!84062 (=> (not res!657399) (not e!553697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84062 (= res!657399 (validMask!0 mask!1948))))

(assert (=> start!84062 e!553697))

(assert (=> start!84062 true))

(assert (=> start!84062 tp_is_empty!22837))

(declare-fun e!553696 () Bool)

(declare-fun array_inv!22827 (array!61663) Bool)

(assert (=> start!84062 (and (array_inv!22827 _values!1278) e!553696)))

(assert (=> start!84062 tp!68891))

(declare-fun array_inv!22828 (array!61661) Bool)

(assert (=> start!84062 (array_inv!22828 _keys!1544)))

(declare-fun b!982206 () Bool)

(declare-fun res!657393 () Bool)

(assert (=> b!982206 (=> (not res!657393) (not e!553697))))

(assert (=> b!982206 (= res!657393 (and (= (size!30165 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30164 _keys!1544) (size!30165 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982207 () Bool)

(assert (=> b!982207 (= e!553696 (and e!553695 mapRes!36284))))

(declare-fun condMapEmpty!36284 () Bool)

(declare-fun mapDefault!36284 () ValueCell!10937)

