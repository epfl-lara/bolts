; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40344 () Bool)

(assert start!40344)

(declare-fun b!442917 () Bool)

(declare-fun res!262490 () Bool)

(declare-fun e!260641 () Bool)

(assert (=> b!442917 (=> (not res!262490) (not e!260641))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442917 (= res!262490 (validKeyInArray!0 k!794))))

(declare-fun b!442918 () Bool)

(declare-fun res!262484 () Bool)

(assert (=> b!442918 (=> (not res!262484) (not e!260641))))

(declare-datatypes ((array!27251 0))(
  ( (array!27252 (arr!13071 (Array (_ BitVec 32) (_ BitVec 64))) (size!13423 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27251)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16751 0))(
  ( (V!16752 (val!5912 Int)) )
))
(declare-datatypes ((ValueCell!5524 0))(
  ( (ValueCellFull!5524 (v!8159 V!16751)) (EmptyCell!5524) )
))
(declare-datatypes ((array!27253 0))(
  ( (array!27254 (arr!13072 (Array (_ BitVec 32) ValueCell!5524)) (size!13424 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27253)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442918 (= res!262484 (and (= (size!13424 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13423 _keys!709) (size!13424 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442919 () Bool)

(declare-fun e!260640 () Bool)

(assert (=> b!442919 (= e!260641 e!260640)))

(declare-fun res!262481 () Bool)

(assert (=> b!442919 (=> (not res!262481) (not e!260640))))

(declare-fun lt!203255 () array!27251)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27251 (_ BitVec 32)) Bool)

(assert (=> b!442919 (= res!262481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203255 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442919 (= lt!203255 (array!27252 (store (arr!13071 _keys!709) i!563 k!794) (size!13423 _keys!709)))))

(declare-fun b!442920 () Bool)

(declare-fun res!262486 () Bool)

(assert (=> b!442920 (=> (not res!262486) (not e!260641))))

(assert (=> b!442920 (= res!262486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!262488 () Bool)

(assert (=> start!40344 (=> (not res!262488) (not e!260641))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40344 (= res!262488 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13423 _keys!709))))))

(assert (=> start!40344 e!260641))

(assert (=> start!40344 true))

(declare-fun e!260643 () Bool)

(declare-fun array_inv!9478 (array!27253) Bool)

(assert (=> start!40344 (and (array_inv!9478 _values!549) e!260643)))

(declare-fun array_inv!9479 (array!27251) Bool)

(assert (=> start!40344 (array_inv!9479 _keys!709)))

(declare-fun b!442921 () Bool)

(declare-fun e!260644 () Bool)

(declare-fun mapRes!19227 () Bool)

(assert (=> b!442921 (= e!260643 (and e!260644 mapRes!19227))))

(declare-fun condMapEmpty!19227 () Bool)

(declare-fun mapDefault!19227 () ValueCell!5524)

