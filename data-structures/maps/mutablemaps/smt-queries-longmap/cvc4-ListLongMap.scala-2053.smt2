; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35498 () Bool)

(assert start!35498)

(declare-fun b!355479 () Bool)

(declare-fun e!217759 () Bool)

(declare-fun tp_is_empty!7943 () Bool)

(assert (=> b!355479 (= e!217759 tp_is_empty!7943)))

(declare-fun b!355481 () Bool)

(declare-fun e!217756 () Bool)

(assert (=> b!355481 (= e!217756 false)))

(declare-fun lt!165790 () Bool)

(declare-datatypes ((array!19433 0))(
  ( (array!19434 (arr!9207 (Array (_ BitVec 32) (_ BitVec 64))) (size!9559 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19433)

(declare-datatypes ((List!5363 0))(
  ( (Nil!5360) (Cons!5359 (h!6215 (_ BitVec 64)) (t!10521 List!5363)) )
))
(declare-fun arrayNoDuplicates!0 (array!19433 (_ BitVec 32) List!5363) Bool)

(assert (=> b!355481 (= lt!165790 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5360))))

(declare-fun b!355482 () Bool)

(declare-fun res!197299 () Bool)

(assert (=> b!355482 (=> (not res!197299) (not e!217756))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11567 0))(
  ( (V!11568 (val!4016 Int)) )
))
(declare-datatypes ((ValueCell!3628 0))(
  ( (ValueCellFull!3628 (v!6206 V!11567)) (EmptyCell!3628) )
))
(declare-datatypes ((array!19435 0))(
  ( (array!19436 (arr!9208 (Array (_ BitVec 32) ValueCell!3628)) (size!9560 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19435)

(assert (=> b!355482 (= res!197299 (and (= (size!9560 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9559 _keys!1456) (size!9560 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355480 () Bool)

(declare-fun e!217757 () Bool)

(assert (=> b!355480 (= e!217757 tp_is_empty!7943)))

(declare-fun res!197297 () Bool)

(assert (=> start!35498 (=> (not res!197297) (not e!217756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35498 (= res!197297 (validMask!0 mask!1842))))

(assert (=> start!35498 e!217756))

(assert (=> start!35498 true))

(declare-fun e!217758 () Bool)

(declare-fun array_inv!6778 (array!19435) Bool)

(assert (=> start!35498 (and (array_inv!6778 _values!1208) e!217758)))

(declare-fun array_inv!6779 (array!19433) Bool)

(assert (=> start!35498 (array_inv!6779 _keys!1456)))

(declare-fun b!355483 () Bool)

(declare-fun mapRes!13422 () Bool)

(assert (=> b!355483 (= e!217758 (and e!217757 mapRes!13422))))

(declare-fun condMapEmpty!13422 () Bool)

(declare-fun mapDefault!13422 () ValueCell!3628)

