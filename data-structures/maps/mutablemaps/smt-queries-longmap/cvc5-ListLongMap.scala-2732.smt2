; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40218 () Bool)

(assert start!40218)

(declare-fun b_free!10477 () Bool)

(declare-fun b_next!10477 () Bool)

(assert (=> start!40218 (= b_free!10477 (not b_next!10477))))

(declare-fun tp!36960 () Bool)

(declare-fun b_and!18463 () Bool)

(assert (=> start!40218 (= tp!36960 b_and!18463)))

(declare-fun b!440609 () Bool)

(declare-fun res!260758 () Bool)

(declare-fun e!259547 () Bool)

(assert (=> b!440609 (=> (not res!260758) (not e!259547))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440609 (= res!260758 (bvsle from!863 i!563))))

(declare-fun b!440610 () Bool)

(declare-fun res!260760 () Bool)

(declare-fun e!259548 () Bool)

(assert (=> b!440610 (=> (not res!260760) (not e!259548))))

(declare-datatypes ((array!27045 0))(
  ( (array!27046 (arr!12969 (Array (_ BitVec 32) (_ BitVec 64))) (size!13321 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27045)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27045 (_ BitVec 32)) Bool)

(assert (=> b!440610 (= res!260760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440611 () Bool)

(declare-fun res!260750 () Bool)

(assert (=> b!440611 (=> (not res!260750) (not e!259547))))

(declare-fun lt!202660 () array!27045)

(declare-datatypes ((List!7754 0))(
  ( (Nil!7751) (Cons!7750 (h!8606 (_ BitVec 64)) (t!13518 List!7754)) )
))
(declare-fun arrayNoDuplicates!0 (array!27045 (_ BitVec 32) List!7754) Bool)

(assert (=> b!440611 (= res!260750 (arrayNoDuplicates!0 lt!202660 #b00000000000000000000000000000000 Nil!7751))))

(declare-fun b!440612 () Bool)

(declare-fun res!260759 () Bool)

(assert (=> b!440612 (=> (not res!260759) (not e!259548))))

(assert (=> b!440612 (= res!260759 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13321 _keys!709))))))

(declare-fun b!440613 () Bool)

(declare-fun e!259543 () Bool)

(declare-fun e!259546 () Bool)

(declare-fun mapRes!19065 () Bool)

(assert (=> b!440613 (= e!259543 (and e!259546 mapRes!19065))))

(declare-fun condMapEmpty!19065 () Bool)

(declare-datatypes ((V!16611 0))(
  ( (V!16612 (val!5859 Int)) )
))
(declare-datatypes ((ValueCell!5471 0))(
  ( (ValueCellFull!5471 (v!8102 V!16611)) (EmptyCell!5471) )
))
(declare-datatypes ((array!27047 0))(
  ( (array!27048 (arr!12970 (Array (_ BitVec 32) ValueCell!5471)) (size!13322 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27047)

(declare-fun mapDefault!19065 () ValueCell!5471)

