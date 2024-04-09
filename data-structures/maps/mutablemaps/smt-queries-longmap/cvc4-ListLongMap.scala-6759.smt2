; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84844 () Bool)

(assert start!84844)

(declare-fun b!991379 () Bool)

(declare-fun e!559150 () Bool)

(declare-fun tp_is_empty!23333 () Bool)

(assert (=> b!991379 (= e!559150 tp_is_empty!23333)))

(declare-fun res!662801 () Bool)

(declare-fun e!559149 () Bool)

(assert (=> start!84844 (=> (not res!662801) (not e!559149))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84844 (= res!662801 (validMask!0 mask!2471))))

(assert (=> start!84844 e!559149))

(assert (=> start!84844 true))

(declare-datatypes ((V!36093 0))(
  ( (V!36094 (val!11717 Int)) )
))
(declare-datatypes ((ValueCell!11185 0))(
  ( (ValueCellFull!11185 (v!14293 V!36093)) (EmptyCell!11185) )
))
(declare-datatypes ((array!62615 0))(
  ( (array!62616 (arr!30152 (Array (_ BitVec 32) ValueCell!11185)) (size!30632 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62615)

(declare-fun e!559151 () Bool)

(declare-fun array_inv!23147 (array!62615) Bool)

(assert (=> start!84844 (and (array_inv!23147 _values!1551) e!559151)))

(declare-datatypes ((array!62617 0))(
  ( (array!62618 (arr!30153 (Array (_ BitVec 32) (_ BitVec 64))) (size!30633 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62617)

(declare-fun array_inv!23148 (array!62617) Bool)

(assert (=> start!84844 (array_inv!23148 _keys!1945)))

(declare-fun mapNonEmpty!37059 () Bool)

(declare-fun mapRes!37059 () Bool)

(declare-fun tp!70131 () Bool)

(declare-fun e!559152 () Bool)

(assert (=> mapNonEmpty!37059 (= mapRes!37059 (and tp!70131 e!559152))))

(declare-fun mapRest!37059 () (Array (_ BitVec 32) ValueCell!11185))

(declare-fun mapKey!37059 () (_ BitVec 32))

(declare-fun mapValue!37059 () ValueCell!11185)

(assert (=> mapNonEmpty!37059 (= (arr!30152 _values!1551) (store mapRest!37059 mapKey!37059 mapValue!37059))))

(declare-fun b!991380 () Bool)

(declare-fun res!662800 () Bool)

(assert (=> b!991380 (=> (not res!662800) (not e!559149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62617 (_ BitVec 32)) Bool)

(assert (=> b!991380 (= res!662800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991381 () Bool)

(assert (=> b!991381 (= e!559149 (bvsgt #b00000000000000000000000000000000 (size!30633 _keys!1945)))))

(declare-fun mapIsEmpty!37059 () Bool)

(assert (=> mapIsEmpty!37059 mapRes!37059))

(declare-fun b!991382 () Bool)

(assert (=> b!991382 (= e!559152 tp_is_empty!23333)))

(declare-fun b!991383 () Bool)

(declare-fun res!662799 () Bool)

(assert (=> b!991383 (=> (not res!662799) (not e!559149))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991383 (= res!662799 (and (= (size!30632 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30633 _keys!1945) (size!30632 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991384 () Bool)

(assert (=> b!991384 (= e!559151 (and e!559150 mapRes!37059))))

(declare-fun condMapEmpty!37059 () Bool)

(declare-fun mapDefault!37059 () ValueCell!11185)

