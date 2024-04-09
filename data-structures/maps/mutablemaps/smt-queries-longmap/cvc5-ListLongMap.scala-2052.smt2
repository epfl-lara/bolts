; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35488 () Bool)

(assert start!35488)

(declare-fun b!355389 () Bool)

(declare-fun res!197252 () Bool)

(declare-fun e!217682 () Bool)

(assert (=> b!355389 (=> (not res!197252) (not e!217682))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19413 0))(
  ( (array!19414 (arr!9197 (Array (_ BitVec 32) (_ BitVec 64))) (size!9549 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19413)

(declare-datatypes ((V!11555 0))(
  ( (V!11556 (val!4011 Int)) )
))
(declare-datatypes ((ValueCell!3623 0))(
  ( (ValueCellFull!3623 (v!6201 V!11555)) (EmptyCell!3623) )
))
(declare-datatypes ((array!19415 0))(
  ( (array!19416 (arr!9198 (Array (_ BitVec 32) ValueCell!3623)) (size!9550 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19415)

(assert (=> b!355389 (= res!197252 (and (= (size!9550 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9549 _keys!1456) (size!9550 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!197253 () Bool)

(assert (=> start!35488 (=> (not res!197253) (not e!217682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35488 (= res!197253 (validMask!0 mask!1842))))

(assert (=> start!35488 e!217682))

(assert (=> start!35488 true))

(declare-fun e!217684 () Bool)

(declare-fun array_inv!6772 (array!19415) Bool)

(assert (=> start!35488 (and (array_inv!6772 _values!1208) e!217684)))

(declare-fun array_inv!6773 (array!19413) Bool)

(assert (=> start!35488 (array_inv!6773 _keys!1456)))

(declare-fun b!355390 () Bool)

(declare-fun e!217685 () Bool)

(declare-fun tp_is_empty!7933 () Bool)

(assert (=> b!355390 (= e!217685 tp_is_empty!7933)))

(declare-fun mapIsEmpty!13407 () Bool)

(declare-fun mapRes!13407 () Bool)

(assert (=> mapIsEmpty!13407 mapRes!13407))

(declare-fun b!355391 () Bool)

(declare-fun res!197254 () Bool)

(assert (=> b!355391 (=> (not res!197254) (not e!217682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19413 (_ BitVec 32)) Bool)

(assert (=> b!355391 (= res!197254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355392 () Bool)

(assert (=> b!355392 (= e!217682 false)))

(declare-fun lt!165775 () Bool)

(declare-datatypes ((List!5359 0))(
  ( (Nil!5356) (Cons!5355 (h!6211 (_ BitVec 64)) (t!10517 List!5359)) )
))
(declare-fun arrayNoDuplicates!0 (array!19413 (_ BitVec 32) List!5359) Bool)

(assert (=> b!355392 (= lt!165775 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5356))))

(declare-fun b!355393 () Bool)

(declare-fun e!217683 () Bool)

(assert (=> b!355393 (= e!217683 tp_is_empty!7933)))

(declare-fun b!355394 () Bool)

(assert (=> b!355394 (= e!217684 (and e!217683 mapRes!13407))))

(declare-fun condMapEmpty!13407 () Bool)

(declare-fun mapDefault!13407 () ValueCell!3623)

