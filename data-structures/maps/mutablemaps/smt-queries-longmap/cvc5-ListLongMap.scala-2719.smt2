; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40140 () Bool)

(assert start!40140)

(declare-fun b_free!10399 () Bool)

(declare-fun b_next!10399 () Bool)

(assert (=> start!40140 (= b_free!10399 (not b_next!10399))))

(declare-fun tp!36726 () Bool)

(declare-fun b_and!18385 () Bool)

(assert (=> start!40140 (= tp!36726 b_and!18385)))

(declare-fun b!438737 () Bool)

(declare-fun res!259230 () Bool)

(declare-fun e!258727 () Bool)

(assert (=> b!438737 (=> (not res!259230) (not e!258727))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438737 (= res!259230 (bvsle from!863 i!563))))

(declare-fun res!259236 () Bool)

(declare-fun e!258724 () Bool)

(assert (=> start!40140 (=> (not res!259236) (not e!258724))))

(declare-datatypes ((array!26895 0))(
  ( (array!26896 (arr!12894 (Array (_ BitVec 32) (_ BitVec 64))) (size!13246 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26895)

(assert (=> start!40140 (= res!259236 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13246 _keys!709))))))

(assert (=> start!40140 e!258724))

(declare-fun tp_is_empty!11551 () Bool)

(assert (=> start!40140 tp_is_empty!11551))

(assert (=> start!40140 tp!36726))

(assert (=> start!40140 true))

(declare-datatypes ((V!16507 0))(
  ( (V!16508 (val!5820 Int)) )
))
(declare-datatypes ((ValueCell!5432 0))(
  ( (ValueCellFull!5432 (v!8063 V!16507)) (EmptyCell!5432) )
))
(declare-datatypes ((array!26897 0))(
  ( (array!26898 (arr!12895 (Array (_ BitVec 32) ValueCell!5432)) (size!13247 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26897)

(declare-fun e!258729 () Bool)

(declare-fun array_inv!9356 (array!26897) Bool)

(assert (=> start!40140 (and (array_inv!9356 _values!549) e!258729)))

(declare-fun array_inv!9357 (array!26895) Bool)

(assert (=> start!40140 (array_inv!9357 _keys!709)))

(declare-fun b!438738 () Bool)

(declare-fun res!259234 () Bool)

(assert (=> b!438738 (=> (not res!259234) (not e!258724))))

(declare-datatypes ((List!7694 0))(
  ( (Nil!7691) (Cons!7690 (h!8546 (_ BitVec 64)) (t!13458 List!7694)) )
))
(declare-fun arrayNoDuplicates!0 (array!26895 (_ BitVec 32) List!7694) Bool)

(assert (=> b!438738 (= res!259234 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7691))))

(declare-fun b!438739 () Bool)

(declare-fun res!259238 () Bool)

(assert (=> b!438739 (=> (not res!259238) (not e!258724))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438739 (= res!259238 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438740 () Bool)

(declare-fun res!259229 () Bool)

(assert (=> b!438740 (=> (not res!259229) (not e!258724))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26895 (_ BitVec 32)) Bool)

(assert (=> b!438740 (= res!259229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438741 () Bool)

(declare-fun e!258728 () Bool)

(declare-fun mapRes!18948 () Bool)

(assert (=> b!438741 (= e!258729 (and e!258728 mapRes!18948))))

(declare-fun condMapEmpty!18948 () Bool)

(declare-fun mapDefault!18948 () ValueCell!5432)

