; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35506 () Bool)

(assert start!35506)

(declare-fun b!355551 () Bool)

(declare-fun res!197335 () Bool)

(declare-fun e!217816 () Bool)

(assert (=> b!355551 (=> (not res!197335) (not e!217816))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19449 0))(
  ( (array!19450 (arr!9215 (Array (_ BitVec 32) (_ BitVec 64))) (size!9567 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19449)

(declare-datatypes ((V!11579 0))(
  ( (V!11580 (val!4020 Int)) )
))
(declare-datatypes ((ValueCell!3632 0))(
  ( (ValueCellFull!3632 (v!6210 V!11579)) (EmptyCell!3632) )
))
(declare-datatypes ((array!19451 0))(
  ( (array!19452 (arr!9216 (Array (_ BitVec 32) ValueCell!3632)) (size!9568 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19451)

(assert (=> b!355551 (= res!197335 (and (= (size!9568 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9567 _keys!1456) (size!9568 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!197333 () Bool)

(assert (=> start!35506 (=> (not res!197333) (not e!217816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35506 (= res!197333 (validMask!0 mask!1842))))

(assert (=> start!35506 e!217816))

(assert (=> start!35506 true))

(declare-fun e!217818 () Bool)

(declare-fun array_inv!6784 (array!19451) Bool)

(assert (=> start!35506 (and (array_inv!6784 _values!1208) e!217818)))

(declare-fun array_inv!6785 (array!19449) Bool)

(assert (=> start!35506 (array_inv!6785 _keys!1456)))

(declare-fun b!355552 () Bool)

(declare-fun res!197334 () Bool)

(assert (=> b!355552 (=> (not res!197334) (not e!217816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19449 (_ BitVec 32)) Bool)

(assert (=> b!355552 (= res!197334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355553 () Bool)

(declare-fun e!217820 () Bool)

(declare-fun tp_is_empty!7951 () Bool)

(assert (=> b!355553 (= e!217820 tp_is_empty!7951)))

(declare-fun b!355554 () Bool)

(declare-fun e!217817 () Bool)

(assert (=> b!355554 (= e!217817 tp_is_empty!7951)))

(declare-fun b!355555 () Bool)

(assert (=> b!355555 (= e!217816 false)))

(declare-fun lt!165802 () Bool)

(declare-datatypes ((List!5365 0))(
  ( (Nil!5362) (Cons!5361 (h!6217 (_ BitVec 64)) (t!10523 List!5365)) )
))
(declare-fun arrayNoDuplicates!0 (array!19449 (_ BitVec 32) List!5365) Bool)

(assert (=> b!355555 (= lt!165802 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5362))))

(declare-fun b!355556 () Bool)

(declare-fun mapRes!13434 () Bool)

(assert (=> b!355556 (= e!217818 (and e!217817 mapRes!13434))))

(declare-fun condMapEmpty!13434 () Bool)

(declare-fun mapDefault!13434 () ValueCell!3632)

