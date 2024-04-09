; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40468 () Bool)

(assert start!40468)

(declare-fun b!445123 () Bool)

(declare-fun res!264177 () Bool)

(declare-fun e!261670 () Bool)

(assert (=> b!445123 (=> (not res!264177) (not e!261670))))

(declare-datatypes ((array!27459 0))(
  ( (array!27460 (arr!13174 (Array (_ BitVec 32) (_ BitVec 64))) (size!13526 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27459)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16899 0))(
  ( (V!16900 (val!5967 Int)) )
))
(declare-datatypes ((ValueCell!5579 0))(
  ( (ValueCellFull!5579 (v!8214 V!16899)) (EmptyCell!5579) )
))
(declare-datatypes ((array!27461 0))(
  ( (array!27462 (arr!13175 (Array (_ BitVec 32) ValueCell!5579)) (size!13527 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27461)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445123 (= res!264177 (and (= (size!13527 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13526 _keys!709) (size!13527 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445124 () Bool)

(declare-fun e!261675 () Bool)

(declare-fun tp_is_empty!11845 () Bool)

(assert (=> b!445124 (= e!261675 tp_is_empty!11845)))

(declare-fun b!445125 () Bool)

(declare-fun res!264176 () Bool)

(assert (=> b!445125 (=> (not res!264176) (not e!261670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445125 (= res!264176 (validMask!0 mask!1025))))

(declare-fun b!445126 () Bool)

(declare-fun res!264169 () Bool)

(assert (=> b!445126 (=> (not res!264169) (not e!261670))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445126 (= res!264169 (or (= (select (arr!13174 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13174 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19395 () Bool)

(declare-fun mapRes!19395 () Bool)

(assert (=> mapIsEmpty!19395 mapRes!19395))

(declare-fun b!445127 () Bool)

(declare-fun res!264170 () Bool)

(assert (=> b!445127 (=> (not res!264170) (not e!261670))))

(declare-datatypes ((List!7860 0))(
  ( (Nil!7857) (Cons!7856 (h!8712 (_ BitVec 64)) (t!13626 List!7860)) )
))
(declare-fun arrayNoDuplicates!0 (array!27459 (_ BitVec 32) List!7860) Bool)

(assert (=> b!445127 (= res!264170 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7857))))

(declare-fun e!261672 () Bool)

(declare-fun b!445128 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!445128 (= e!261672 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13526 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsge (bvsub (size!13526 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13526 _keys!709) from!863))))))

(declare-fun b!445129 () Bool)

(declare-fun e!261671 () Bool)

(assert (=> b!445129 (= e!261671 tp_is_empty!11845)))

(declare-fun b!445130 () Bool)

(assert (=> b!445130 (= e!261670 e!261672)))

(declare-fun res!264171 () Bool)

(assert (=> b!445130 (=> (not res!264171) (not e!261672))))

(declare-fun lt!203586 () array!27459)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27459 (_ BitVec 32)) Bool)

(assert (=> b!445130 (= res!264171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203586 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!445130 (= lt!203586 (array!27460 (store (arr!13174 _keys!709) i!563 k!794) (size!13526 _keys!709)))))

(declare-fun res!264172 () Bool)

(assert (=> start!40468 (=> (not res!264172) (not e!261670))))

(assert (=> start!40468 (= res!264172 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13526 _keys!709))))))

(assert (=> start!40468 e!261670))

(assert (=> start!40468 true))

(declare-fun e!261673 () Bool)

(declare-fun array_inv!9544 (array!27461) Bool)

(assert (=> start!40468 (and (array_inv!9544 _values!549) e!261673)))

(declare-fun array_inv!9545 (array!27459) Bool)

(assert (=> start!40468 (array_inv!9545 _keys!709)))

(declare-fun b!445131 () Bool)

(declare-fun res!264174 () Bool)

(assert (=> b!445131 (=> (not res!264174) (not e!261672))))

(assert (=> b!445131 (= res!264174 (arrayNoDuplicates!0 lt!203586 #b00000000000000000000000000000000 Nil!7857))))

(declare-fun b!445132 () Bool)

(declare-fun res!264175 () Bool)

(assert (=> b!445132 (=> (not res!264175) (not e!261670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445132 (= res!264175 (validKeyInArray!0 k!794))))

(declare-fun b!445133 () Bool)

(assert (=> b!445133 (= e!261673 (and e!261671 mapRes!19395))))

(declare-fun condMapEmpty!19395 () Bool)

(declare-fun mapDefault!19395 () ValueCell!5579)

