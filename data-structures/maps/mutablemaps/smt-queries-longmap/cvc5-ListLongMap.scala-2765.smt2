; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40450 () Bool)

(assert start!40450)

(declare-fun b!444770 () Bool)

(declare-fun res!263901 () Bool)

(declare-fun e!261511 () Bool)

(assert (=> b!444770 (=> (not res!263901) (not e!261511))))

(declare-datatypes ((array!27423 0))(
  ( (array!27424 (arr!13156 (Array (_ BitVec 32) (_ BitVec 64))) (size!13508 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27423)

(declare-datatypes ((List!7852 0))(
  ( (Nil!7849) (Cons!7848 (h!8704 (_ BitVec 64)) (t!13618 List!7852)) )
))
(declare-fun arrayNoDuplicates!0 (array!27423 (_ BitVec 32) List!7852) Bool)

(assert (=> b!444770 (= res!263901 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7849))))

(declare-fun b!444771 () Bool)

(declare-fun res!263899 () Bool)

(assert (=> b!444771 (=> (not res!263899) (not e!261511))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444771 (= res!263899 (validMask!0 mask!1025))))

(declare-fun b!444772 () Bool)

(declare-fun e!261513 () Bool)

(assert (=> b!444772 (= e!261511 e!261513)))

(declare-fun res!263903 () Bool)

(assert (=> b!444772 (=> (not res!263903) (not e!261513))))

(declare-fun lt!203535 () array!27423)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27423 (_ BitVec 32)) Bool)

(assert (=> b!444772 (= res!263903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203535 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444772 (= lt!203535 (array!27424 (store (arr!13156 _keys!709) i!563 k!794) (size!13508 _keys!709)))))

(declare-fun res!263905 () Bool)

(assert (=> start!40450 (=> (not res!263905) (not e!261511))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40450 (= res!263905 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13508 _keys!709))))))

(assert (=> start!40450 e!261511))

(assert (=> start!40450 true))

(declare-datatypes ((V!16875 0))(
  ( (V!16876 (val!5958 Int)) )
))
(declare-datatypes ((ValueCell!5570 0))(
  ( (ValueCellFull!5570 (v!8205 V!16875)) (EmptyCell!5570) )
))
(declare-datatypes ((array!27425 0))(
  ( (array!27426 (arr!13157 (Array (_ BitVec 32) ValueCell!5570)) (size!13509 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27425)

(declare-fun e!261509 () Bool)

(declare-fun array_inv!9528 (array!27425) Bool)

(assert (=> start!40450 (and (array_inv!9528 _values!549) e!261509)))

(declare-fun array_inv!9529 (array!27423) Bool)

(assert (=> start!40450 (array_inv!9529 _keys!709)))

(declare-fun b!444773 () Bool)

(declare-fun res!263896 () Bool)

(assert (=> b!444773 (=> (not res!263896) (not e!261511))))

(assert (=> b!444773 (= res!263896 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13508 _keys!709))))))

(declare-fun b!444774 () Bool)

(declare-fun e!261512 () Bool)

(declare-fun tp_is_empty!11827 () Bool)

(assert (=> b!444774 (= e!261512 tp_is_empty!11827)))

(declare-fun b!444775 () Bool)

(declare-fun res!263898 () Bool)

(assert (=> b!444775 (=> (not res!263898) (not e!261511))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444775 (= res!263898 (and (= (size!13509 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13508 _keys!709) (size!13509 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444776 () Bool)

(declare-fun e!261510 () Bool)

(declare-fun mapRes!19368 () Bool)

(assert (=> b!444776 (= e!261509 (and e!261510 mapRes!19368))))

(declare-fun condMapEmpty!19368 () Bool)

(declare-fun mapDefault!19368 () ValueCell!5570)

