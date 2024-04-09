; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84236 () Bool)

(assert start!84236)

(declare-fun b_free!19909 () Bool)

(declare-fun b_next!19909 () Bool)

(assert (=> start!84236 (= b_free!19909 (not b_next!19909))))

(declare-fun tp!69332 () Bool)

(declare-fun b_and!31913 () Bool)

(assert (=> start!84236 (= tp!69332 b_and!31913)))

(declare-fun b!984797 () Bool)

(declare-fun res!659100 () Bool)

(declare-fun e!555175 () Bool)

(assert (=> b!984797 (=> (not res!659100) (not e!555175))))

(declare-datatypes ((array!61989 0))(
  ( (array!61990 (arr!29848 (Array (_ BitVec 32) (_ BitVec 64))) (size!30328 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61989)

(declare-datatypes ((List!20805 0))(
  ( (Nil!20802) (Cons!20801 (h!21963 (_ BitVec 64)) (t!29666 List!20805)) )
))
(declare-fun arrayNoDuplicates!0 (array!61989 (_ BitVec 32) List!20805) Bool)

(assert (=> b!984797 (= res!659100 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20802))))

(declare-fun b!984798 () Bool)

(declare-fun res!659099 () Bool)

(assert (=> b!984798 (=> (not res!659099) (not e!555175))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984798 (= res!659099 (validKeyInArray!0 (select (arr!29848 _keys!1544) from!1932)))))

(declare-fun b!984799 () Bool)

(declare-fun e!555174 () Bool)

(assert (=> b!984799 (= e!555175 e!555174)))

(declare-fun res!659098 () Bool)

(assert (=> b!984799 (=> (not res!659098) (not e!555174))))

(assert (=> b!984799 (= res!659098 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29848 _keys!1544) from!1932))))))

(declare-datatypes ((V!35665 0))(
  ( (V!35666 (val!11556 Int)) )
))
(declare-datatypes ((ValueCell!11024 0))(
  ( (ValueCellFull!11024 (v!14118 V!35665)) (EmptyCell!11024) )
))
(declare-datatypes ((array!61991 0))(
  ( (array!61992 (arr!29849 (Array (_ BitVec 32) ValueCell!11024)) (size!30329 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61991)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436978 () V!35665)

(declare-fun get!15511 (ValueCell!11024 V!35665) V!35665)

(declare-fun dynLambda!1840 (Int (_ BitVec 64)) V!35665)

(assert (=> b!984799 (= lt!436978 (get!15511 (select (arr!29849 _values!1278) from!1932) (dynLambda!1840 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35665)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35665)

(declare-datatypes ((tuple2!14886 0))(
  ( (tuple2!14887 (_1!7453 (_ BitVec 64)) (_2!7453 V!35665)) )
))
(declare-datatypes ((List!20806 0))(
  ( (Nil!20803) (Cons!20802 (h!21964 tuple2!14886) (t!29667 List!20806)) )
))
(declare-datatypes ((ListLongMap!13597 0))(
  ( (ListLongMap!13598 (toList!6814 List!20806)) )
))
(declare-fun lt!436977 () ListLongMap!13597)

(declare-fun getCurrentListMapNoExtraKeys!3469 (array!61989 array!61991 (_ BitVec 32) (_ BitVec 32) V!35665 V!35665 (_ BitVec 32) Int) ListLongMap!13597)

(assert (=> b!984799 (= lt!436977 (getCurrentListMapNoExtraKeys!3469 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984800 () Bool)

(declare-fun e!555172 () Bool)

(declare-fun tp_is_empty!23011 () Bool)

(assert (=> b!984800 (= e!555172 tp_is_empty!23011)))

(declare-fun res!659093 () Bool)

(assert (=> start!84236 (=> (not res!659093) (not e!555175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84236 (= res!659093 (validMask!0 mask!1948))))

(assert (=> start!84236 e!555175))

(assert (=> start!84236 true))

(assert (=> start!84236 tp_is_empty!23011))

(declare-fun e!555171 () Bool)

(declare-fun array_inv!22939 (array!61991) Bool)

(assert (=> start!84236 (and (array_inv!22939 _values!1278) e!555171)))

(assert (=> start!84236 tp!69332))

(declare-fun array_inv!22940 (array!61989) Bool)

(assert (=> start!84236 (array_inv!22940 _keys!1544)))

(declare-fun mapIsEmpty!36545 () Bool)

(declare-fun mapRes!36545 () Bool)

(assert (=> mapIsEmpty!36545 mapRes!36545))

(declare-fun b!984801 () Bool)

(declare-fun res!659097 () Bool)

(assert (=> b!984801 (=> (not res!659097) (not e!555175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61989 (_ BitVec 32)) Bool)

(assert (=> b!984801 (= res!659097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984802 () Bool)

(assert (=> b!984802 (= e!555174 (not true))))

(declare-fun lt!436980 () tuple2!14886)

(declare-fun lt!436981 () tuple2!14886)

(declare-fun +!3004 (ListLongMap!13597 tuple2!14886) ListLongMap!13597)

(assert (=> b!984802 (= (+!3004 (+!3004 lt!436977 lt!436980) lt!436981) (+!3004 (+!3004 lt!436977 lt!436981) lt!436980))))

(assert (=> b!984802 (= lt!436981 (tuple2!14887 (select (arr!29848 _keys!1544) from!1932) lt!436978))))

(assert (=> b!984802 (= lt!436980 (tuple2!14887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32683 0))(
  ( (Unit!32684) )
))
(declare-fun lt!436979 () Unit!32683)

(declare-fun addCommutativeForDiffKeys!666 (ListLongMap!13597 (_ BitVec 64) V!35665 (_ BitVec 64) V!35665) Unit!32683)

(assert (=> b!984802 (= lt!436979 (addCommutativeForDiffKeys!666 lt!436977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29848 _keys!1544) from!1932) lt!436978))))

(declare-fun b!984803 () Bool)

(declare-fun res!659095 () Bool)

(assert (=> b!984803 (=> (not res!659095) (not e!555175))))

(assert (=> b!984803 (= res!659095 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30328 _keys!1544))))))

(declare-fun b!984804 () Bool)

(declare-fun e!555176 () Bool)

(assert (=> b!984804 (= e!555171 (and e!555176 mapRes!36545))))

(declare-fun condMapEmpty!36545 () Bool)

(declare-fun mapDefault!36545 () ValueCell!11024)

