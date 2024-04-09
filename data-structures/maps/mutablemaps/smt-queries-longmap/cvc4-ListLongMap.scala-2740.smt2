; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40270 () Bool)

(assert start!40270)

(declare-fun b!441833 () Bool)

(declare-fun res!261742 () Bool)

(declare-fun e!260086 () Bool)

(assert (=> b!441833 (=> (not res!261742) (not e!260086))))

(declare-datatypes ((array!27149 0))(
  ( (array!27150 (arr!13021 (Array (_ BitVec 32) (_ BitVec 64))) (size!13373 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27149)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441833 (= res!261742 (or (= (select (arr!13021 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13021 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441834 () Bool)

(declare-fun res!261740 () Bool)

(assert (=> b!441834 (=> (not res!261740) (not e!260086))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16679 0))(
  ( (V!16680 (val!5885 Int)) )
))
(declare-datatypes ((ValueCell!5497 0))(
  ( (ValueCellFull!5497 (v!8128 V!16679)) (EmptyCell!5497) )
))
(declare-datatypes ((array!27151 0))(
  ( (array!27152 (arr!13022 (Array (_ BitVec 32) ValueCell!5497)) (size!13374 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27151)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!441834 (= res!261740 (and (= (size!13374 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13373 _keys!709) (size!13374 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441835 () Bool)

(declare-fun res!261738 () Bool)

(assert (=> b!441835 (=> (not res!261738) (not e!260086))))

(assert (=> b!441835 (= res!261738 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13373 _keys!709))))))

(declare-fun mapIsEmpty!19143 () Bool)

(declare-fun mapRes!19143 () Bool)

(assert (=> mapIsEmpty!19143 mapRes!19143))

(declare-fun mapNonEmpty!19143 () Bool)

(declare-fun tp!37107 () Bool)

(declare-fun e!260083 () Bool)

(assert (=> mapNonEmpty!19143 (= mapRes!19143 (and tp!37107 e!260083))))

(declare-fun mapKey!19143 () (_ BitVec 32))

(declare-fun mapValue!19143 () ValueCell!5497)

(declare-fun mapRest!19143 () (Array (_ BitVec 32) ValueCell!5497))

(assert (=> mapNonEmpty!19143 (= (arr!13022 _values!549) (store mapRest!19143 mapKey!19143 mapValue!19143))))

(declare-fun b!441836 () Bool)

(declare-fun e!260085 () Bool)

(declare-fun tp_is_empty!11681 () Bool)

(assert (=> b!441836 (= e!260085 tp_is_empty!11681)))

(declare-fun b!441837 () Bool)

(declare-fun res!261745 () Bool)

(assert (=> b!441837 (=> (not res!261745) (not e!260086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27149 (_ BitVec 32)) Bool)

(assert (=> b!441837 (= res!261745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441838 () Bool)

(declare-fun e!260081 () Bool)

(assert (=> b!441838 (= e!260086 e!260081)))

(declare-fun res!261747 () Bool)

(assert (=> b!441838 (=> (not res!261747) (not e!260081))))

(declare-fun lt!203025 () array!27149)

(assert (=> b!441838 (= res!261747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203025 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!441838 (= lt!203025 (array!27150 (store (arr!13021 _keys!709) i!563 k!794) (size!13373 _keys!709)))))

(declare-fun b!441839 () Bool)

(declare-fun res!261741 () Bool)

(assert (=> b!441839 (=> (not res!261741) (not e!260086))))

(declare-datatypes ((List!7796 0))(
  ( (Nil!7793) (Cons!7792 (h!8648 (_ BitVec 64)) (t!13560 List!7796)) )
))
(declare-fun arrayNoDuplicates!0 (array!27149 (_ BitVec 32) List!7796) Bool)

(assert (=> b!441839 (= res!261741 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7793))))

(declare-fun b!441840 () Bool)

(declare-fun res!261746 () Bool)

(assert (=> b!441840 (=> (not res!261746) (not e!260086))))

(declare-fun arrayContainsKey!0 (array!27149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441840 (= res!261746 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!261743 () Bool)

(assert (=> start!40270 (=> (not res!261743) (not e!260086))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40270 (= res!261743 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13373 _keys!709))))))

(assert (=> start!40270 e!260086))

(assert (=> start!40270 true))

(declare-fun e!260082 () Bool)

(declare-fun array_inv!9440 (array!27151) Bool)

(assert (=> start!40270 (and (array_inv!9440 _values!549) e!260082)))

(declare-fun array_inv!9441 (array!27149) Bool)

(assert (=> start!40270 (array_inv!9441 _keys!709)))

(declare-fun b!441841 () Bool)

(assert (=> b!441841 (= e!260083 tp_is_empty!11681)))

(declare-fun b!441842 () Bool)

(declare-fun res!261739 () Bool)

(assert (=> b!441842 (=> (not res!261739) (not e!260086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441842 (= res!261739 (validKeyInArray!0 k!794))))

(declare-fun b!441843 () Bool)

(declare-fun res!261744 () Bool)

(assert (=> b!441843 (=> (not res!261744) (not e!260086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441843 (= res!261744 (validMask!0 mask!1025))))

(declare-fun b!441844 () Bool)

(assert (=> b!441844 (= e!260082 (and e!260085 mapRes!19143))))

(declare-fun condMapEmpty!19143 () Bool)

(declare-fun mapDefault!19143 () ValueCell!5497)

