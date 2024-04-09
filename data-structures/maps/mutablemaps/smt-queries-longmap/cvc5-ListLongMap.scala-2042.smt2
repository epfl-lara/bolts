; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35428 () Bool)

(assert start!35428)

(declare-fun mapIsEmpty!13317 () Bool)

(declare-fun mapRes!13317 () Bool)

(assert (=> mapIsEmpty!13317 mapRes!13317))

(declare-fun res!196496 () Bool)

(declare-fun e!217235 () Bool)

(assert (=> start!35428 (=> (not res!196496) (not e!217235))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35428 (= res!196496 (validMask!0 mask!1842))))

(assert (=> start!35428 e!217235))

(assert (=> start!35428 true))

(declare-datatypes ((V!11475 0))(
  ( (V!11476 (val!3981 Int)) )
))
(declare-datatypes ((ValueCell!3593 0))(
  ( (ValueCellFull!3593 (v!6171 V!11475)) (EmptyCell!3593) )
))
(declare-datatypes ((array!19297 0))(
  ( (array!19298 (arr!9139 (Array (_ BitVec 32) ValueCell!3593)) (size!9491 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19297)

(declare-fun e!217232 () Bool)

(declare-fun array_inv!6728 (array!19297) Bool)

(assert (=> start!35428 (and (array_inv!6728 _values!1208) e!217232)))

(declare-datatypes ((array!19299 0))(
  ( (array!19300 (arr!9140 (Array (_ BitVec 32) (_ BitVec 64))) (size!9492 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19299)

(declare-fun array_inv!6729 (array!19299) Bool)

(assert (=> start!35428 (array_inv!6729 _keys!1456)))

(declare-fun b!354363 () Bool)

(declare-fun e!217231 () Bool)

(declare-fun tp_is_empty!7873 () Bool)

(assert (=> b!354363 (= e!217231 tp_is_empty!7873)))

(declare-fun b!354364 () Bool)

(declare-fun e!217234 () Bool)

(assert (=> b!354364 (= e!217234 tp_is_empty!7873)))

(declare-fun b!354365 () Bool)

(assert (=> b!354365 (= e!217235 false)))

(declare-fun lt!165685 () Bool)

(declare-datatypes ((List!5321 0))(
  ( (Nil!5318) (Cons!5317 (h!6173 (_ BitVec 64)) (t!10479 List!5321)) )
))
(declare-fun arrayNoDuplicates!0 (array!19299 (_ BitVec 32) List!5321) Bool)

(assert (=> b!354365 (= lt!165685 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5318))))

(declare-fun b!354366 () Bool)

(assert (=> b!354366 (= e!217232 (and e!217234 mapRes!13317))))

(declare-fun condMapEmpty!13317 () Bool)

(declare-fun mapDefault!13317 () ValueCell!3593)

