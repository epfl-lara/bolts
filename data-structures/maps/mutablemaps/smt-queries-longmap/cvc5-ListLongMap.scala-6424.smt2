; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82368 () Bool)

(assert start!82368)

(declare-fun b_free!18607 () Bool)

(declare-fun b_next!18607 () Bool)

(assert (=> start!82368 (= b_free!18607 (not b_next!18607))))

(declare-fun tp!64791 () Bool)

(declare-fun b_and!30113 () Bool)

(assert (=> start!82368 (= tp!64791 b_and!30113)))

(declare-fun b!959867 () Bool)

(declare-fun res!642634 () Bool)

(declare-fun e!541115 () Bool)

(assert (=> b!959867 (=> (not res!642634) (not e!541115))))

(declare-datatypes ((array!58745 0))(
  ( (array!58746 (arr!28242 (Array (_ BitVec 32) (_ BitVec 64))) (size!28722 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58745)

(declare-datatypes ((List!19765 0))(
  ( (Nil!19762) (Cons!19761 (h!20923 (_ BitVec 64)) (t!28136 List!19765)) )
))
(declare-fun arrayNoDuplicates!0 (array!58745 (_ BitVec 32) List!19765) Bool)

(assert (=> b!959867 (= res!642634 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19762))))

(declare-fun res!642631 () Bool)

(assert (=> start!82368 (=> (not res!642631) (not e!541115))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82368 (= res!642631 (validMask!0 mask!2088))))

(assert (=> start!82368 e!541115))

(assert (=> start!82368 true))

(declare-fun tp_is_empty!21319 () Bool)

(assert (=> start!82368 tp_is_empty!21319))

(declare-fun array_inv!21833 (array!58745) Bool)

(assert (=> start!82368 (array_inv!21833 _keys!1668)))

(declare-datatypes ((V!33409 0))(
  ( (V!33410 (val!10710 Int)) )
))
(declare-datatypes ((ValueCell!10178 0))(
  ( (ValueCellFull!10178 (v!13267 V!33409)) (EmptyCell!10178) )
))
(declare-datatypes ((array!58747 0))(
  ( (array!58748 (arr!28243 (Array (_ BitVec 32) ValueCell!10178)) (size!28723 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58747)

(declare-fun e!541116 () Bool)

(declare-fun array_inv!21834 (array!58747) Bool)

(assert (=> start!82368 (and (array_inv!21834 _values!1386) e!541116)))

(assert (=> start!82368 tp!64791))

(declare-fun b!959868 () Bool)

(declare-fun e!541117 () Bool)

(assert (=> b!959868 (= e!541117 tp_is_empty!21319)))

(declare-fun b!959869 () Bool)

(declare-fun res!642633 () Bool)

(assert (=> b!959869 (=> (not res!642633) (not e!541115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58745 (_ BitVec 32)) Bool)

(assert (=> b!959869 (= res!642633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959870 () Bool)

(declare-fun res!642632 () Bool)

(assert (=> b!959870 (=> (not res!642632) (not e!541115))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959870 (= res!642632 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28722 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28722 _keys!1668))))))

(declare-fun b!959871 () Bool)

(declare-fun mapRes!33958 () Bool)

(assert (=> b!959871 (= e!541116 (and e!541117 mapRes!33958))))

(declare-fun condMapEmpty!33958 () Bool)

(declare-fun mapDefault!33958 () ValueCell!10178)

