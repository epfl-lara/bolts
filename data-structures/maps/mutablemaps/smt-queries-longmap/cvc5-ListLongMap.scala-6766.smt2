; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84920 () Bool)

(assert start!84920)

(declare-fun res!663074 () Bool)

(declare-fun e!559529 () Bool)

(assert (=> start!84920 (=> (not res!663074) (not e!559529))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84920 (= res!663074 (validMask!0 mask!2471))))

(assert (=> start!84920 e!559529))

(assert (=> start!84920 true))

(declare-datatypes ((V!36145 0))(
  ( (V!36146 (val!11736 Int)) )
))
(declare-datatypes ((ValueCell!11204 0))(
  ( (ValueCellFull!11204 (v!14313 V!36145)) (EmptyCell!11204) )
))
(declare-datatypes ((array!62693 0))(
  ( (array!62694 (arr!30187 (Array (_ BitVec 32) ValueCell!11204)) (size!30667 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62693)

(declare-fun e!559526 () Bool)

(declare-fun array_inv!23177 (array!62693) Bool)

(assert (=> start!84920 (and (array_inv!23177 _values!1551) e!559526)))

(declare-datatypes ((array!62695 0))(
  ( (array!62696 (arr!30188 (Array (_ BitVec 32) (_ BitVec 64))) (size!30668 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62695)

(declare-fun array_inv!23178 (array!62695) Bool)

(assert (=> start!84920 (array_inv!23178 _keys!1945)))

(declare-fun b!991881 () Bool)

(declare-fun res!663075 () Bool)

(assert (=> b!991881 (=> (not res!663075) (not e!559529))))

(declare-datatypes ((List!20984 0))(
  ( (Nil!20981) (Cons!20980 (h!22142 (_ BitVec 64)) (t!29975 List!20984)) )
))
(declare-fun arrayNoDuplicates!0 (array!62695 (_ BitVec 32) List!20984) Bool)

(assert (=> b!991881 (= res!663075 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20981))))

(declare-fun mapIsEmpty!37128 () Bool)

(declare-fun mapRes!37128 () Bool)

(assert (=> mapIsEmpty!37128 mapRes!37128))

(declare-fun mapNonEmpty!37128 () Bool)

(declare-fun tp!70200 () Bool)

(declare-fun e!559528 () Bool)

(assert (=> mapNonEmpty!37128 (= mapRes!37128 (and tp!70200 e!559528))))

(declare-fun mapValue!37128 () ValueCell!11204)

(declare-fun mapRest!37128 () (Array (_ BitVec 32) ValueCell!11204))

(declare-fun mapKey!37128 () (_ BitVec 32))

(assert (=> mapNonEmpty!37128 (= (arr!30187 _values!1551) (store mapRest!37128 mapKey!37128 mapValue!37128))))

(declare-fun b!991882 () Bool)

(declare-fun e!559527 () Bool)

(assert (=> b!991882 (= e!559529 e!559527)))

(declare-fun res!663078 () Bool)

(assert (=> b!991882 (=> (not res!663078) (not e!559527))))

(declare-datatypes ((SeekEntryResult!9206 0))(
  ( (MissingZero!9206 (index!39194 (_ BitVec 32))) (Found!9206 (index!39195 (_ BitVec 32))) (Intermediate!9206 (undefined!10018 Bool) (index!39196 (_ BitVec 32)) (x!86312 (_ BitVec 32))) (Undefined!9206) (MissingVacant!9206 (index!39197 (_ BitVec 32))) )
))
(declare-fun lt!439989 () SeekEntryResult!9206)

(assert (=> b!991882 (= res!663078 (is-Found!9206 lt!439989))))

(declare-fun k!1425 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!62695 (_ BitVec 32)) SeekEntryResult!9206)

(assert (=> b!991882 (= lt!439989 (seekEntry!0 k!1425 _keys!1945 mask!2471))))

(declare-fun b!991883 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!991883 (= e!559527 (not (inRange!0 (index!39195 lt!439989) mask!2471)))))

(declare-fun b!991884 () Bool)

(declare-fun res!663076 () Bool)

(assert (=> b!991884 (=> (not res!663076) (not e!559529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991884 (= res!663076 (validKeyInArray!0 k!1425))))

(declare-fun b!991885 () Bool)

(declare-fun res!663077 () Bool)

(assert (=> b!991885 (=> (not res!663077) (not e!559529))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991885 (= res!663077 (and (= (size!30667 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30668 _keys!1945) (size!30667 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991886 () Bool)

(declare-fun e!559524 () Bool)

(assert (=> b!991886 (= e!559526 (and e!559524 mapRes!37128))))

(declare-fun condMapEmpty!37128 () Bool)

(declare-fun mapDefault!37128 () ValueCell!11204)

