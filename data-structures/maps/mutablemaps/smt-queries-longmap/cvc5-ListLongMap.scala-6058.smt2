; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78422 () Bool)

(assert start!78422)

(declare-fun b_free!16759 () Bool)

(declare-fun b_next!16759 () Bool)

(assert (=> start!78422 (= b_free!16759 (not b_next!16759))))

(declare-fun tp!58565 () Bool)

(declare-fun b_and!27397 () Bool)

(assert (=> start!78422 (= tp!58565 b_and!27397)))

(declare-fun b!914366 () Bool)

(declare-fun res!616761 () Bool)

(declare-fun e!512987 () Bool)

(assert (=> b!914366 (=> (not res!616761) (not e!512987))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914366 (= res!616761 (inRange!0 i!717 mask!1756))))

(declare-fun b!914367 () Bool)

(declare-fun e!512992 () Bool)

(assert (=> b!914367 (= e!512992 e!512987)))

(declare-fun res!616764 () Bool)

(assert (=> b!914367 (=> (not res!616764) (not e!512987))))

(declare-datatypes ((V!30535 0))(
  ( (V!30536 (val!9639 Int)) )
))
(declare-datatypes ((tuple2!12628 0))(
  ( (tuple2!12629 (_1!6324 (_ BitVec 64)) (_2!6324 V!30535)) )
))
(declare-datatypes ((List!18466 0))(
  ( (Nil!18463) (Cons!18462 (h!19608 tuple2!12628) (t!26085 List!18466)) )
))
(declare-datatypes ((ListLongMap!11339 0))(
  ( (ListLongMap!11340 (toList!5685 List!18466)) )
))
(declare-fun lt!411437 () ListLongMap!11339)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4700 (ListLongMap!11339 (_ BitVec 64)) Bool)

(assert (=> b!914367 (= res!616764 (contains!4700 lt!411437 k!1033))))

(declare-datatypes ((ValueCell!9107 0))(
  ( (ValueCellFull!9107 (v!12155 V!30535)) (EmptyCell!9107) )
))
(declare-datatypes ((array!54360 0))(
  ( (array!54361 (arr!26127 (Array (_ BitVec 32) ValueCell!9107)) (size!26587 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54360)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30535)

(declare-datatypes ((array!54362 0))(
  ( (array!54363 (arr!26128 (Array (_ BitVec 32) (_ BitVec 64))) (size!26588 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54362)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30535)

(declare-fun getCurrentListMap!2914 (array!54362 array!54360 (_ BitVec 32) (_ BitVec 32) V!30535 V!30535 (_ BitVec 32) Int) ListLongMap!11339)

(assert (=> b!914367 (= lt!411437 (getCurrentListMap!2914 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!30504 () Bool)

(declare-fun mapRes!30504 () Bool)

(declare-fun tp!58566 () Bool)

(declare-fun e!512984 () Bool)

(assert (=> mapNonEmpty!30504 (= mapRes!30504 (and tp!58566 e!512984))))

(declare-fun mapValue!30504 () ValueCell!9107)

(declare-fun mapRest!30504 () (Array (_ BitVec 32) ValueCell!9107))

(declare-fun mapKey!30504 () (_ BitVec 32))

(assert (=> mapNonEmpty!30504 (= (arr!26127 _values!1152) (store mapRest!30504 mapKey!30504 mapValue!30504))))

(declare-fun b!914368 () Bool)

(declare-fun e!512983 () Bool)

(declare-fun e!512990 () Bool)

(assert (=> b!914368 (= e!512983 e!512990)))

(declare-fun res!616768 () Bool)

(assert (=> b!914368 (= res!616768 (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!914368 (=> res!616768 e!512990)))

(declare-fun b!914369 () Bool)

(assert (=> b!914369 (= e!512987 e!512983)))

(declare-fun c!95924 () Bool)

(assert (=> b!914369 (= c!95924 (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914370 () Bool)

(declare-fun res!616763 () Bool)

(assert (=> b!914370 (=> (not res!616763) (not e!512992))))

(assert (=> b!914370 (= res!616763 (and (= (size!26587 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26588 _keys!1386) (size!26587 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30504 () Bool)

(assert (=> mapIsEmpty!30504 mapRes!30504))

(declare-fun b!914371 () Bool)

(declare-fun e!512985 () Bool)

(assert (=> b!914371 (= e!512983 e!512985)))

(declare-fun res!616762 () Bool)

(assert (=> b!914371 (= res!616762 (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914371 (=> (not res!616762) (not e!512985))))

(declare-fun b!914372 () Bool)

(declare-fun e!512988 () Bool)

(declare-fun e!512986 () Bool)

(assert (=> b!914372 (= e!512988 (and e!512986 mapRes!30504))))

(declare-fun condMapEmpty!30504 () Bool)

(declare-fun mapDefault!30504 () ValueCell!9107)

