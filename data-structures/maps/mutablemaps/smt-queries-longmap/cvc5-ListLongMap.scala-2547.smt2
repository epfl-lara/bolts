; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39108 () Bool)

(assert start!39108)

(declare-fun b_free!9367 () Bool)

(declare-fun b_next!9367 () Bool)

(assert (=> start!39108 (= b_free!9367 (not b_next!9367))))

(declare-fun tp!33629 () Bool)

(declare-fun b_and!16771 () Bool)

(assert (=> start!39108 (= tp!33629 b_and!16771)))

(declare-fun b!410667 () Bool)

(declare-fun e!246072 () Bool)

(declare-fun tp_is_empty!10519 () Bool)

(assert (=> b!410667 (= e!246072 tp_is_empty!10519)))

(declare-fun b!410668 () Bool)

(declare-fun e!246068 () Bool)

(assert (=> b!410668 (= e!246068 tp_is_empty!10519)))

(declare-fun b!410669 () Bool)

(declare-fun e!246069 () Bool)

(declare-fun e!246070 () Bool)

(assert (=> b!410669 (= e!246069 e!246070)))

(declare-fun res!238186 () Bool)

(assert (=> b!410669 (=> (not res!238186) (not e!246070))))

(declare-datatypes ((array!24887 0))(
  ( (array!24888 (arr!11890 (Array (_ BitVec 32) (_ BitVec 64))) (size!12242 (_ BitVec 32))) )
))
(declare-fun lt!189129 () array!24887)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24887 (_ BitVec 32)) Bool)

(assert (=> b!410669 (= res!238186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189129 mask!1025))))

(declare-fun _keys!709 () array!24887)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410669 (= lt!189129 (array!24888 (store (arr!11890 _keys!709) i!563 k!794) (size!12242 _keys!709)))))

(declare-fun b!410670 () Bool)

(declare-fun res!238188 () Bool)

(assert (=> b!410670 (=> (not res!238188) (not e!246069))))

(assert (=> b!410670 (= res!238188 (or (= (select (arr!11890 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11890 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410671 () Bool)

(declare-fun res!238192 () Bool)

(assert (=> b!410671 (=> (not res!238192) (not e!246070))))

(declare-datatypes ((List!6869 0))(
  ( (Nil!6866) (Cons!6865 (h!7721 (_ BitVec 64)) (t!12051 List!6869)) )
))
(declare-fun arrayNoDuplicates!0 (array!24887 (_ BitVec 32) List!6869) Bool)

(assert (=> b!410671 (= res!238192 (arrayNoDuplicates!0 lt!189129 #b00000000000000000000000000000000 Nil!6866))))

(declare-fun res!238189 () Bool)

(assert (=> start!39108 (=> (not res!238189) (not e!246069))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39108 (= res!238189 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12242 _keys!709))))))

(assert (=> start!39108 e!246069))

(assert (=> start!39108 tp_is_empty!10519))

(assert (=> start!39108 tp!33629))

(assert (=> start!39108 true))

(declare-datatypes ((V!15131 0))(
  ( (V!15132 (val!5304 Int)) )
))
(declare-datatypes ((ValueCell!4916 0))(
  ( (ValueCellFull!4916 (v!7547 V!15131)) (EmptyCell!4916) )
))
(declare-datatypes ((array!24889 0))(
  ( (array!24890 (arr!11891 (Array (_ BitVec 32) ValueCell!4916)) (size!12243 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24889)

(declare-fun e!246073 () Bool)

(declare-fun array_inv!8678 (array!24889) Bool)

(assert (=> start!39108 (and (array_inv!8678 _values!549) e!246073)))

(declare-fun array_inv!8679 (array!24887) Bool)

(assert (=> start!39108 (array_inv!8679 _keys!709)))

(declare-fun b!410672 () Bool)

(declare-fun res!238184 () Bool)

(assert (=> b!410672 (=> (not res!238184) (not e!246069))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!410672 (= res!238184 (and (= (size!12243 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12242 _keys!709) (size!12243 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410673 () Bool)

(declare-fun res!238190 () Bool)

(assert (=> b!410673 (=> (not res!238190) (not e!246069))))

(assert (=> b!410673 (= res!238190 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6866))))

(declare-fun b!410674 () Bool)

(declare-fun res!238193 () Bool)

(assert (=> b!410674 (=> (not res!238193) (not e!246070))))

(assert (=> b!410674 (= res!238193 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17400 () Bool)

(declare-fun mapRes!17400 () Bool)

(declare-fun tp!33630 () Bool)

(assert (=> mapNonEmpty!17400 (= mapRes!17400 (and tp!33630 e!246068))))

(declare-fun mapRest!17400 () (Array (_ BitVec 32) ValueCell!4916))

(declare-fun mapValue!17400 () ValueCell!4916)

(declare-fun mapKey!17400 () (_ BitVec 32))

(assert (=> mapNonEmpty!17400 (= (arr!11891 _values!549) (store mapRest!17400 mapKey!17400 mapValue!17400))))

(declare-fun b!410675 () Bool)

(declare-fun res!238185 () Bool)

(assert (=> b!410675 (=> (not res!238185) (not e!246069))))

(declare-fun arrayContainsKey!0 (array!24887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410675 (= res!238185 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!410676 () Bool)

(declare-fun res!238183 () Bool)

(assert (=> b!410676 (=> (not res!238183) (not e!246069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410676 (= res!238183 (validMask!0 mask!1025))))

(declare-fun b!410677 () Bool)

(declare-fun res!238187 () Bool)

(assert (=> b!410677 (=> (not res!238187) (not e!246069))))

(assert (=> b!410677 (= res!238187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17400 () Bool)

(assert (=> mapIsEmpty!17400 mapRes!17400))

(declare-fun b!410678 () Bool)

(assert (=> b!410678 (= e!246070 false)))

(declare-fun minValue!515 () V!15131)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15131)

(declare-datatypes ((tuple2!6816 0))(
  ( (tuple2!6817 (_1!3418 (_ BitVec 64)) (_2!3418 V!15131)) )
))
(declare-datatypes ((List!6870 0))(
  ( (Nil!6867) (Cons!6866 (h!7722 tuple2!6816) (t!12052 List!6870)) )
))
(declare-datatypes ((ListLongMap!5743 0))(
  ( (ListLongMap!5744 (toList!2887 List!6870)) )
))
(declare-fun lt!189128 () ListLongMap!5743)

(declare-fun v!412 () V!15131)

(declare-fun getCurrentListMapNoExtraKeys!1097 (array!24887 array!24889 (_ BitVec 32) (_ BitVec 32) V!15131 V!15131 (_ BitVec 32) Int) ListLongMap!5743)

(assert (=> b!410678 (= lt!189128 (getCurrentListMapNoExtraKeys!1097 lt!189129 (array!24890 (store (arr!11891 _values!549) i!563 (ValueCellFull!4916 v!412)) (size!12243 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189127 () ListLongMap!5743)

(assert (=> b!410678 (= lt!189127 (getCurrentListMapNoExtraKeys!1097 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410679 () Bool)

(declare-fun res!238191 () Bool)

(assert (=> b!410679 (=> (not res!238191) (not e!246069))))

(assert (=> b!410679 (= res!238191 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12242 _keys!709))))))

(declare-fun b!410680 () Bool)

(assert (=> b!410680 (= e!246073 (and e!246072 mapRes!17400))))

(declare-fun condMapEmpty!17400 () Bool)

(declare-fun mapDefault!17400 () ValueCell!4916)

