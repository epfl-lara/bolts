; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40456 () Bool)

(assert start!40456)

(declare-fun mapIsEmpty!19377 () Bool)

(declare-fun mapRes!19377 () Bool)

(assert (=> mapIsEmpty!19377 mapRes!19377))

(declare-fun b!444887 () Bool)

(declare-fun res!263989 () Bool)

(declare-fun e!261564 () Bool)

(assert (=> b!444887 (=> (not res!263989) (not e!261564))))

(declare-datatypes ((array!27435 0))(
  ( (array!27436 (arr!13162 (Array (_ BitVec 32) (_ BitVec 64))) (size!13514 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27435)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16883 0))(
  ( (V!16884 (val!5961 Int)) )
))
(declare-datatypes ((ValueCell!5573 0))(
  ( (ValueCellFull!5573 (v!8208 V!16883)) (EmptyCell!5573) )
))
(declare-datatypes ((array!27437 0))(
  ( (array!27438 (arr!13163 (Array (_ BitVec 32) ValueCell!5573)) (size!13515 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27437)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444887 (= res!263989 (and (= (size!13515 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13514 _keys!709) (size!13515 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444888 () Bool)

(declare-fun res!263995 () Bool)

(assert (=> b!444888 (=> (not res!263995) (not e!261564))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444888 (= res!263995 (validKeyInArray!0 k!794))))

(declare-fun b!444889 () Bool)

(declare-fun e!261567 () Bool)

(assert (=> b!444889 (= e!261567 false)))

(declare-fun lt!203553 () Bool)

(declare-fun lt!203552 () array!27435)

(declare-datatypes ((List!7855 0))(
  ( (Nil!7852) (Cons!7851 (h!8707 (_ BitVec 64)) (t!13621 List!7855)) )
))
(declare-fun arrayNoDuplicates!0 (array!27435 (_ BitVec 32) List!7855) Bool)

(assert (=> b!444889 (= lt!203553 (arrayNoDuplicates!0 lt!203552 #b00000000000000000000000000000000 Nil!7852))))

(declare-fun b!444890 () Bool)

(declare-fun res!263990 () Bool)

(assert (=> b!444890 (=> (not res!263990) (not e!261564))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444890 (= res!263990 (or (= (select (arr!13162 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13162 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444891 () Bool)

(declare-fun res!263986 () Bool)

(assert (=> b!444891 (=> (not res!263986) (not e!261564))))

(declare-fun arrayContainsKey!0 (array!27435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444891 (= res!263986 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444892 () Bool)

(declare-fun e!261562 () Bool)

(declare-fun tp_is_empty!11833 () Bool)

(assert (=> b!444892 (= e!261562 tp_is_empty!11833)))

(declare-fun res!263993 () Bool)

(assert (=> start!40456 (=> (not res!263993) (not e!261564))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40456 (= res!263993 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13514 _keys!709))))))

(assert (=> start!40456 e!261564))

(assert (=> start!40456 true))

(declare-fun e!261563 () Bool)

(declare-fun array_inv!9532 (array!27437) Bool)

(assert (=> start!40456 (and (array_inv!9532 _values!549) e!261563)))

(declare-fun array_inv!9533 (array!27435) Bool)

(assert (=> start!40456 (array_inv!9533 _keys!709)))

(declare-fun b!444893 () Bool)

(declare-fun res!263994 () Bool)

(assert (=> b!444893 (=> (not res!263994) (not e!261564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27435 (_ BitVec 32)) Bool)

(assert (=> b!444893 (= res!263994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19377 () Bool)

(declare-fun tp!37359 () Bool)

(declare-fun e!261565 () Bool)

(assert (=> mapNonEmpty!19377 (= mapRes!19377 (and tp!37359 e!261565))))

(declare-fun mapValue!19377 () ValueCell!5573)

(declare-fun mapRest!19377 () (Array (_ BitVec 32) ValueCell!5573))

(declare-fun mapKey!19377 () (_ BitVec 32))

(assert (=> mapNonEmpty!19377 (= (arr!13163 _values!549) (store mapRest!19377 mapKey!19377 mapValue!19377))))

(declare-fun b!444894 () Bool)

(declare-fun res!263992 () Bool)

(assert (=> b!444894 (=> (not res!263992) (not e!261564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444894 (= res!263992 (validMask!0 mask!1025))))

(declare-fun b!444895 () Bool)

(assert (=> b!444895 (= e!261565 tp_is_empty!11833)))

(declare-fun b!444896 () Bool)

(assert (=> b!444896 (= e!261564 e!261567)))

(declare-fun res!263991 () Bool)

(assert (=> b!444896 (=> (not res!263991) (not e!261567))))

(assert (=> b!444896 (= res!263991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203552 mask!1025))))

(assert (=> b!444896 (= lt!203552 (array!27436 (store (arr!13162 _keys!709) i!563 k!794) (size!13514 _keys!709)))))

(declare-fun b!444897 () Bool)

(declare-fun res!263988 () Bool)

(assert (=> b!444897 (=> (not res!263988) (not e!261564))))

(assert (=> b!444897 (= res!263988 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7852))))

(declare-fun b!444898 () Bool)

(assert (=> b!444898 (= e!261563 (and e!261562 mapRes!19377))))

(declare-fun condMapEmpty!19377 () Bool)

(declare-fun mapDefault!19377 () ValueCell!5573)

