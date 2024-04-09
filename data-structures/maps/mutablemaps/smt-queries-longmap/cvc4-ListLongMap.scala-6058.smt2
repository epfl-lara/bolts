; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78426 () Bool)

(assert start!78426)

(declare-fun b_free!16763 () Bool)

(declare-fun b_next!16763 () Bool)

(assert (=> start!78426 (= b_free!16763 (not b_next!16763))))

(declare-fun tp!58577 () Bool)

(declare-fun b_and!27401 () Bool)

(assert (=> start!78426 (= tp!58577 b_and!27401)))

(declare-fun b!914456 () Bool)

(declare-fun e!513051 () Bool)

(declare-fun e!513049 () Bool)

(assert (=> b!914456 (= e!513051 e!513049)))

(declare-fun res!616824 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!914456 (= res!616824 (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!914456 (=> res!616824 e!513049)))

(declare-fun b!914457 () Bool)

(declare-fun e!513045 () Bool)

(assert (=> b!914457 (= e!513051 e!513045)))

(declare-fun res!616829 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!914457 (= res!616829 (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914457 (=> (not res!616829) (not e!513045))))

(declare-fun b!914458 () Bool)

(declare-fun res!616825 () Bool)

(declare-fun e!513046 () Bool)

(assert (=> b!914458 (=> (not res!616825) (not e!513046))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914458 (= res!616825 (inRange!0 i!717 mask!1756))))

(declare-fun b!914459 () Bool)

(declare-fun e!513050 () Bool)

(declare-fun tp_is_empty!19181 () Bool)

(assert (=> b!914459 (= e!513050 tp_is_empty!19181)))

(declare-fun b!914460 () Bool)

(declare-fun res!616828 () Bool)

(declare-fun e!513048 () Bool)

(assert (=> b!914460 (=> (not res!616828) (not e!513048))))

(declare-datatypes ((array!54368 0))(
  ( (array!54369 (arr!26131 (Array (_ BitVec 32) (_ BitVec 64))) (size!26591 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54368)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54368 (_ BitVec 32)) Bool)

(assert (=> b!914460 (= res!616828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914461 () Bool)

(declare-fun res!616823 () Bool)

(assert (=> b!914461 (=> (not res!616823) (not e!513048))))

(declare-datatypes ((V!30539 0))(
  ( (V!30540 (val!9641 Int)) )
))
(declare-datatypes ((ValueCell!9109 0))(
  ( (ValueCellFull!9109 (v!12157 V!30539)) (EmptyCell!9109) )
))
(declare-datatypes ((array!54370 0))(
  ( (array!54371 (arr!26132 (Array (_ BitVec 32) ValueCell!9109)) (size!26592 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54370)

(assert (=> b!914461 (= res!616823 (and (= (size!26592 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26591 _keys!1386) (size!26592 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!914462 () Bool)

(assert (=> b!914462 (= e!513046 e!513051)))

(declare-fun c!95930 () Bool)

(assert (=> b!914462 (= c!95930 (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914463 () Bool)

(declare-fun res!616827 () Bool)

(assert (=> b!914463 (=> (not res!616827) (not e!513048))))

(declare-datatypes ((List!18469 0))(
  ( (Nil!18466) (Cons!18465 (h!19611 (_ BitVec 64)) (t!26088 List!18469)) )
))
(declare-fun arrayNoDuplicates!0 (array!54368 (_ BitVec 32) List!18469) Bool)

(assert (=> b!914463 (= res!616827 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18466))))

(declare-fun b!914464 () Bool)

(declare-fun res!616826 () Bool)

(assert (=> b!914464 (= res!616826 (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun e!513044 () Bool)

(assert (=> b!914464 (=> res!616826 e!513044)))

(assert (=> b!914464 (= e!513045 e!513044)))

(declare-fun b!914465 () Bool)

(declare-fun e!513047 () Bool)

(assert (=> b!914465 (= e!513047 tp_is_empty!19181)))

(declare-fun mapIsEmpty!30510 () Bool)

(declare-fun mapRes!30510 () Bool)

(assert (=> mapIsEmpty!30510 mapRes!30510))

(declare-fun mapNonEmpty!30510 () Bool)

(declare-fun tp!58578 () Bool)

(assert (=> mapNonEmpty!30510 (= mapRes!30510 (and tp!58578 e!513050))))

(declare-fun mapKey!30510 () (_ BitVec 32))

(declare-fun mapRest!30510 () (Array (_ BitVec 32) ValueCell!9109))

(declare-fun mapValue!30510 () ValueCell!9109)

(assert (=> mapNonEmpty!30510 (= (arr!26132 _values!1152) (store mapRest!30510 mapKey!30510 mapValue!30510))))

(declare-fun b!914466 () Bool)

(declare-fun e!513052 () Bool)

(assert (=> b!914466 (= e!513052 (and e!513047 mapRes!30510))))

(declare-fun condMapEmpty!30510 () Bool)

(declare-fun mapDefault!30510 () ValueCell!9109)

