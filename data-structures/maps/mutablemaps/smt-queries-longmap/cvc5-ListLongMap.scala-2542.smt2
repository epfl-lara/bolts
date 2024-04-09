; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39078 () Bool)

(assert start!39078)

(declare-fun b_free!9337 () Bool)

(declare-fun b_next!9337 () Bool)

(assert (=> start!39078 (= b_free!9337 (not b_next!9337))))

(declare-fun tp!33540 () Bool)

(declare-fun b_and!16741 () Bool)

(assert (=> start!39078 (= tp!33540 b_and!16741)))

(declare-fun b!409992 () Bool)

(declare-fun res!237643 () Bool)

(declare-fun e!245798 () Bool)

(assert (=> b!409992 (=> (not res!237643) (not e!245798))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409992 (= res!237643 (bvsle from!863 i!563))))

(declare-fun b!409993 () Bool)

(declare-fun res!237650 () Bool)

(assert (=> b!409993 (=> (not res!237650) (not e!245798))))

(declare-datatypes ((array!24829 0))(
  ( (array!24830 (arr!11861 (Array (_ BitVec 32) (_ BitVec 64))) (size!12213 (_ BitVec 32))) )
))
(declare-fun lt!189008 () array!24829)

(declare-datatypes ((List!6850 0))(
  ( (Nil!6847) (Cons!6846 (h!7702 (_ BitVec 64)) (t!12032 List!6850)) )
))
(declare-fun arrayNoDuplicates!0 (array!24829 (_ BitVec 32) List!6850) Bool)

(assert (=> b!409993 (= res!237650 (arrayNoDuplicates!0 lt!189008 #b00000000000000000000000000000000 Nil!6847))))

(declare-fun b!409994 () Bool)

(declare-fun res!237647 () Bool)

(declare-fun e!245801 () Bool)

(assert (=> b!409994 (=> (not res!237647) (not e!245801))))

(declare-fun _keys!709 () array!24829)

(assert (=> b!409994 (= res!237647 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12213 _keys!709))))))

(declare-fun b!409995 () Bool)

(declare-fun res!237646 () Bool)

(assert (=> b!409995 (=> (not res!237646) (not e!245801))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15091 0))(
  ( (V!15092 (val!5289 Int)) )
))
(declare-datatypes ((ValueCell!4901 0))(
  ( (ValueCellFull!4901 (v!7532 V!15091)) (EmptyCell!4901) )
))
(declare-datatypes ((array!24831 0))(
  ( (array!24832 (arr!11862 (Array (_ BitVec 32) ValueCell!4901)) (size!12214 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24831)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!409995 (= res!237646 (and (= (size!12214 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12213 _keys!709) (size!12214 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409996 () Bool)

(declare-fun e!245800 () Bool)

(declare-fun tp_is_empty!10489 () Bool)

(assert (=> b!409996 (= e!245800 tp_is_empty!10489)))

(declare-fun mapNonEmpty!17355 () Bool)

(declare-fun mapRes!17355 () Bool)

(declare-fun tp!33539 () Bool)

(declare-fun e!245799 () Bool)

(assert (=> mapNonEmpty!17355 (= mapRes!17355 (and tp!33539 e!245799))))

(declare-fun mapValue!17355 () ValueCell!4901)

(declare-fun mapRest!17355 () (Array (_ BitVec 32) ValueCell!4901))

(declare-fun mapKey!17355 () (_ BitVec 32))

(assert (=> mapNonEmpty!17355 (= (arr!11862 _values!549) (store mapRest!17355 mapKey!17355 mapValue!17355))))

(declare-fun res!237652 () Bool)

(assert (=> start!39078 (=> (not res!237652) (not e!245801))))

(assert (=> start!39078 (= res!237652 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12213 _keys!709))))))

(assert (=> start!39078 e!245801))

(assert (=> start!39078 tp_is_empty!10489))

(assert (=> start!39078 tp!33540))

(assert (=> start!39078 true))

(declare-fun e!245802 () Bool)

(declare-fun array_inv!8660 (array!24831) Bool)

(assert (=> start!39078 (and (array_inv!8660 _values!549) e!245802)))

(declare-fun array_inv!8661 (array!24829) Bool)

(assert (=> start!39078 (array_inv!8661 _keys!709)))

(declare-fun b!409997 () Bool)

(declare-fun res!237648 () Bool)

(assert (=> b!409997 (=> (not res!237648) (not e!245801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409997 (= res!237648 (validMask!0 mask!1025))))

(declare-fun b!409998 () Bool)

(assert (=> b!409998 (= e!245799 tp_is_empty!10489)))

(declare-fun b!409999 () Bool)

(assert (=> b!409999 (= e!245802 (and e!245800 mapRes!17355))))

(declare-fun condMapEmpty!17355 () Bool)

(declare-fun mapDefault!17355 () ValueCell!4901)

