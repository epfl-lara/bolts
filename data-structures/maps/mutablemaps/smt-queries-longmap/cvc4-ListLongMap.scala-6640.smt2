; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83844 () Bool)

(assert start!83844)

(declare-fun b_free!19625 () Bool)

(declare-fun b_next!19625 () Bool)

(assert (=> start!83844 (= b_free!19625 (not b_next!19625))))

(declare-fun tp!68318 () Bool)

(declare-fun b_and!31357 () Bool)

(assert (=> start!83844 (= tp!68318 b_and!31357)))

(declare-fun b!978831 () Bool)

(declare-fun e!551828 () Bool)

(declare-fun e!551825 () Bool)

(assert (=> b!978831 (= e!551828 (not e!551825))))

(declare-fun res!655167 () Bool)

(assert (=> b!978831 (=> res!655167 e!551825)))

(declare-datatypes ((array!61253 0))(
  ( (array!61254 (arr!29480 (Array (_ BitVec 32) (_ BitVec 64))) (size!29960 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61253)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978831 (= res!655167 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29480 _keys!1544) from!1932)))))

(declare-datatypes ((V!35141 0))(
  ( (V!35142 (val!11360 Int)) )
))
(declare-datatypes ((tuple2!14664 0))(
  ( (tuple2!14665 (_1!7342 (_ BitVec 64)) (_2!7342 V!35141)) )
))
(declare-fun lt!434010 () tuple2!14664)

(declare-datatypes ((List!20563 0))(
  ( (Nil!20560) (Cons!20559 (h!21721 tuple2!14664) (t!29152 List!20563)) )
))
(declare-datatypes ((ListLongMap!13375 0))(
  ( (ListLongMap!13376 (toList!6703 List!20563)) )
))
(declare-fun lt!434011 () ListLongMap!13375)

(declare-fun lt!434008 () ListLongMap!13375)

(declare-fun lt!434012 () tuple2!14664)

(declare-fun +!2909 (ListLongMap!13375 tuple2!14664) ListLongMap!13375)

(assert (=> b!978831 (= (+!2909 lt!434011 lt!434010) (+!2909 lt!434008 lt!434012))))

(declare-fun lt!434009 () ListLongMap!13375)

(assert (=> b!978831 (= lt!434008 (+!2909 lt!434009 lt!434010))))

(declare-fun lt!434005 () V!35141)

(assert (=> b!978831 (= lt!434010 (tuple2!14665 (select (arr!29480 _keys!1544) from!1932) lt!434005))))

(assert (=> b!978831 (= lt!434011 (+!2909 lt!434009 lt!434012))))

(declare-fun minValue!1220 () V!35141)

(assert (=> b!978831 (= lt!434012 (tuple2!14665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32493 0))(
  ( (Unit!32494) )
))
(declare-fun lt!434006 () Unit!32493)

(declare-fun addCommutativeForDiffKeys!571 (ListLongMap!13375 (_ BitVec 64) V!35141 (_ BitVec 64) V!35141) Unit!32493)

(assert (=> b!978831 (= lt!434006 (addCommutativeForDiffKeys!571 lt!434009 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29480 _keys!1544) from!1932) lt!434005))))

(declare-datatypes ((ValueCell!10828 0))(
  ( (ValueCellFull!10828 (v!13922 V!35141)) (EmptyCell!10828) )
))
(declare-datatypes ((array!61255 0))(
  ( (array!61256 (arr!29481 (Array (_ BitVec 32) ValueCell!10828)) (size!29961 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61255)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15284 (ValueCell!10828 V!35141) V!35141)

(declare-fun dynLambda!1745 (Int (_ BitVec 64)) V!35141)

(assert (=> b!978831 (= lt!434005 (get!15284 (select (arr!29481 _values!1278) from!1932) (dynLambda!1745 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434013 () ListLongMap!13375)

(declare-fun lt!434014 () tuple2!14664)

(assert (=> b!978831 (= lt!434009 (+!2909 lt!434013 lt!434014))))

(declare-fun zeroValue!1220 () V!35141)

(assert (=> b!978831 (= lt!434014 (tuple2!14665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3370 (array!61253 array!61255 (_ BitVec 32) (_ BitVec 32) V!35141 V!35141 (_ BitVec 32) Int) ListLongMap!13375)

(assert (=> b!978831 (= lt!434013 (getCurrentListMapNoExtraKeys!3370 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!655165 () Bool)

(assert (=> start!83844 (=> (not res!655165) (not e!551828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83844 (= res!655165 (validMask!0 mask!1948))))

(assert (=> start!83844 e!551828))

(assert (=> start!83844 true))

(declare-fun tp_is_empty!22619 () Bool)

(assert (=> start!83844 tp_is_empty!22619))

(declare-fun e!551827 () Bool)

(declare-fun array_inv!22691 (array!61255) Bool)

(assert (=> start!83844 (and (array_inv!22691 _values!1278) e!551827)))

(assert (=> start!83844 tp!68318))

(declare-fun array_inv!22692 (array!61253) Bool)

(assert (=> start!83844 (array_inv!22692 _keys!1544)))

(declare-fun b!978832 () Bool)

(declare-fun res!655166 () Bool)

(assert (=> b!978832 (=> (not res!655166) (not e!551828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978832 (= res!655166 (validKeyInArray!0 (select (arr!29480 _keys!1544) from!1932)))))

(declare-fun b!978833 () Bool)

(assert (=> b!978833 (= e!551825 true)))

(assert (=> b!978833 (= lt!434008 (+!2909 (+!2909 lt!434013 lt!434010) lt!434014))))

(declare-fun lt!434007 () Unit!32493)

(assert (=> b!978833 (= lt!434007 (addCommutativeForDiffKeys!571 lt!434013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29480 _keys!1544) from!1932) lt!434005))))

(declare-fun b!978834 () Bool)

(declare-fun e!551823 () Bool)

(declare-fun mapRes!35957 () Bool)

(assert (=> b!978834 (= e!551827 (and e!551823 mapRes!35957))))

(declare-fun condMapEmpty!35957 () Bool)

(declare-fun mapDefault!35957 () ValueCell!10828)

