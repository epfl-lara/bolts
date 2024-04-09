; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35518 () Bool)

(assert start!35518)

(declare-fun mapIsEmpty!13452 () Bool)

(declare-fun mapRes!13452 () Bool)

(assert (=> mapIsEmpty!13452 mapRes!13452))

(declare-fun res!197388 () Bool)

(declare-fun e!217910 () Bool)

(assert (=> start!35518 (=> (not res!197388) (not e!217910))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35518 (= res!197388 (validMask!0 mask!1842))))

(assert (=> start!35518 e!217910))

(assert (=> start!35518 true))

(declare-datatypes ((V!11595 0))(
  ( (V!11596 (val!4026 Int)) )
))
(declare-datatypes ((ValueCell!3638 0))(
  ( (ValueCellFull!3638 (v!6216 V!11595)) (EmptyCell!3638) )
))
(declare-datatypes ((array!19471 0))(
  ( (array!19472 (arr!9226 (Array (_ BitVec 32) ValueCell!3638)) (size!9578 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19471)

(declare-fun e!217907 () Bool)

(declare-fun array_inv!6792 (array!19471) Bool)

(assert (=> start!35518 (and (array_inv!6792 _values!1208) e!217907)))

(declare-datatypes ((array!19473 0))(
  ( (array!19474 (arr!9227 (Array (_ BitVec 32) (_ BitVec 64))) (size!9579 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19473)

(declare-fun array_inv!6793 (array!19473) Bool)

(assert (=> start!35518 (array_inv!6793 _keys!1456)))

(declare-fun b!355659 () Bool)

(assert (=> b!355659 (= e!217910 false)))

(declare-fun lt!165820 () Bool)

(declare-datatypes ((List!5369 0))(
  ( (Nil!5366) (Cons!5365 (h!6221 (_ BitVec 64)) (t!10527 List!5369)) )
))
(declare-fun arrayNoDuplicates!0 (array!19473 (_ BitVec 32) List!5369) Bool)

(assert (=> b!355659 (= lt!165820 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5366))))

(declare-fun b!355660 () Bool)

(declare-fun e!217906 () Bool)

(assert (=> b!355660 (= e!217907 (and e!217906 mapRes!13452))))

(declare-fun condMapEmpty!13452 () Bool)

(declare-fun mapDefault!13452 () ValueCell!3638)

