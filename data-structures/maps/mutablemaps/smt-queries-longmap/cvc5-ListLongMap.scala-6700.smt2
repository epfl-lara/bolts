; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84200 () Bool)

(assert start!84200)

(declare-fun b_free!19873 () Bool)

(declare-fun b_next!19873 () Bool)

(assert (=> start!84200 (= b_free!19873 (not b_next!19873))))

(declare-fun tp!69224 () Bool)

(declare-fun b_and!31841 () Bool)

(assert (=> start!84200 (= tp!69224 b_and!31841)))

(declare-fun res!658663 () Bool)

(declare-fun e!554849 () Bool)

(assert (=> start!84200 (=> (not res!658663) (not e!554849))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84200 (= res!658663 (validMask!0 mask!1948))))

(assert (=> start!84200 e!554849))

(assert (=> start!84200 true))

(declare-fun tp_is_empty!22975 () Bool)

(assert (=> start!84200 tp_is_empty!22975))

(declare-datatypes ((V!35617 0))(
  ( (V!35618 (val!11538 Int)) )
))
(declare-datatypes ((ValueCell!11006 0))(
  ( (ValueCellFull!11006 (v!14100 V!35617)) (EmptyCell!11006) )
))
(declare-datatypes ((array!61919 0))(
  ( (array!61920 (arr!29813 (Array (_ BitVec 32) ValueCell!11006)) (size!30293 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61919)

(declare-fun e!554848 () Bool)

(declare-fun array_inv!22915 (array!61919) Bool)

(assert (=> start!84200 (and (array_inv!22915 _values!1278) e!554848)))

(assert (=> start!84200 tp!69224))

(declare-datatypes ((array!61921 0))(
  ( (array!61922 (arr!29814 (Array (_ BitVec 32) (_ BitVec 64))) (size!30294 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61921)

(declare-fun array_inv!22916 (array!61921) Bool)

(assert (=> start!84200 (array_inv!22916 _keys!1544)))

(declare-fun mapNonEmpty!36491 () Bool)

(declare-fun mapRes!36491 () Bool)

(declare-fun tp!69223 () Bool)

(declare-fun e!554851 () Bool)

(assert (=> mapNonEmpty!36491 (= mapRes!36491 (and tp!69223 e!554851))))

(declare-fun mapKey!36491 () (_ BitVec 32))

(declare-fun mapValue!36491 () ValueCell!11006)

(declare-fun mapRest!36491 () (Array (_ BitVec 32) ValueCell!11006))

(assert (=> mapNonEmpty!36491 (= (arr!29813 _values!1278) (store mapRest!36491 mapKey!36491 mapValue!36491))))

(declare-fun mapIsEmpty!36491 () Bool)

(assert (=> mapIsEmpty!36491 mapRes!36491))

(declare-fun b!984167 () Bool)

(declare-fun e!554852 () Bool)

(assert (=> b!984167 (= e!554852 tp_is_empty!22975)))

(declare-fun b!984168 () Bool)

(declare-fun res!658662 () Bool)

(assert (=> b!984168 (=> (not res!658662) (not e!554849))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984168 (= res!658662 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30294 _keys!1544))))))

(declare-fun b!984169 () Bool)

(declare-fun res!658665 () Bool)

(assert (=> b!984169 (=> (not res!658665) (not e!554849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984169 (= res!658665 (validKeyInArray!0 (select (arr!29814 _keys!1544) from!1932)))))

(declare-fun b!984170 () Bool)

(assert (=> b!984170 (= e!554851 tp_is_empty!22975)))

(declare-fun b!984171 () Bool)

(declare-fun res!658661 () Bool)

(assert (=> b!984171 (=> (not res!658661) (not e!554849))))

(declare-datatypes ((List!20777 0))(
  ( (Nil!20774) (Cons!20773 (h!21935 (_ BitVec 64)) (t!29602 List!20777)) )
))
(declare-fun arrayNoDuplicates!0 (array!61921 (_ BitVec 32) List!20777) Bool)

(assert (=> b!984171 (= res!658661 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20774))))

(declare-fun b!984172 () Bool)

(declare-fun e!554850 () Bool)

(assert (=> b!984172 (= e!554849 e!554850)))

(declare-fun res!658667 () Bool)

(assert (=> b!984172 (=> (not res!658667) (not e!554850))))

(assert (=> b!984172 (= res!658667 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29814 _keys!1544) from!1932))))))

(declare-fun lt!436709 () V!35617)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15485 (ValueCell!11006 V!35617) V!35617)

(declare-fun dynLambda!1826 (Int (_ BitVec 64)) V!35617)

(assert (=> b!984172 (= lt!436709 (get!15485 (select (arr!29813 _values!1278) from!1932) (dynLambda!1826 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35617)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14856 0))(
  ( (tuple2!14857 (_1!7438 (_ BitVec 64)) (_2!7438 V!35617)) )
))
(declare-datatypes ((List!20778 0))(
  ( (Nil!20775) (Cons!20774 (h!21936 tuple2!14856) (t!29603 List!20778)) )
))
(declare-datatypes ((ListLongMap!13567 0))(
  ( (ListLongMap!13568 (toList!6799 List!20778)) )
))
(declare-fun lt!436708 () ListLongMap!13567)

(declare-fun zeroValue!1220 () V!35617)

(declare-fun getCurrentListMapNoExtraKeys!3455 (array!61921 array!61919 (_ BitVec 32) (_ BitVec 32) V!35617 V!35617 (_ BitVec 32) Int) ListLongMap!13567)

(assert (=> b!984172 (= lt!436708 (getCurrentListMapNoExtraKeys!3455 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984173 () Bool)

(assert (=> b!984173 (= e!554848 (and e!554852 mapRes!36491))))

(declare-fun condMapEmpty!36491 () Bool)

(declare-fun mapDefault!36491 () ValueCell!11006)

