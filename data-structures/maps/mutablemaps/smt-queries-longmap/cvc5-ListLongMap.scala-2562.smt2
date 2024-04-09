; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39198 () Bool)

(assert start!39198)

(declare-fun b_free!9457 () Bool)

(declare-fun b_next!9457 () Bool)

(assert (=> start!39198 (= b_free!9457 (not b_next!9457))))

(declare-fun tp!33900 () Bool)

(declare-fun b_and!16861 () Bool)

(assert (=> start!39198 (= tp!33900 b_and!16861)))

(declare-fun b!412698 () Bool)

(declare-fun res!239812 () Bool)

(declare-fun e!246883 () Bool)

(assert (=> b!412698 (=> (not res!239812) (not e!246883))))

(declare-datatypes ((array!25057 0))(
  ( (array!25058 (arr!11975 (Array (_ BitVec 32) (_ BitVec 64))) (size!12327 (_ BitVec 32))) )
))
(declare-fun lt!189540 () array!25057)

(declare-datatypes ((List!6928 0))(
  ( (Nil!6925) (Cons!6924 (h!7780 (_ BitVec 64)) (t!12110 List!6928)) )
))
(declare-fun arrayNoDuplicates!0 (array!25057 (_ BitVec 32) List!6928) Bool)

(assert (=> b!412698 (= res!239812 (arrayNoDuplicates!0 lt!189540 #b00000000000000000000000000000000 Nil!6925))))

(declare-fun mapIsEmpty!17535 () Bool)

(declare-fun mapRes!17535 () Bool)

(assert (=> mapIsEmpty!17535 mapRes!17535))

(declare-fun res!239816 () Bool)

(declare-fun e!246888 () Bool)

(assert (=> start!39198 (=> (not res!239816) (not e!246888))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!25057)

(assert (=> start!39198 (= res!239816 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12327 _keys!709))))))

(assert (=> start!39198 e!246888))

(declare-fun tp_is_empty!10609 () Bool)

(assert (=> start!39198 tp_is_empty!10609))

(assert (=> start!39198 tp!33900))

(assert (=> start!39198 true))

(declare-datatypes ((V!15251 0))(
  ( (V!15252 (val!5349 Int)) )
))
(declare-datatypes ((ValueCell!4961 0))(
  ( (ValueCellFull!4961 (v!7592 V!15251)) (EmptyCell!4961) )
))
(declare-datatypes ((array!25059 0))(
  ( (array!25060 (arr!11976 (Array (_ BitVec 32) ValueCell!4961)) (size!12328 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25059)

(declare-fun e!246884 () Bool)

(declare-fun array_inv!8730 (array!25059) Bool)

(assert (=> start!39198 (and (array_inv!8730 _values!549) e!246884)))

(declare-fun array_inv!8731 (array!25057) Bool)

(assert (=> start!39198 (array_inv!8731 _keys!709)))

(declare-fun b!412699 () Bool)

(declare-fun e!246886 () Bool)

(assert (=> b!412699 (= e!246883 e!246886)))

(declare-fun res!239806 () Bool)

(assert (=> b!412699 (=> (not res!239806) (not e!246886))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412699 (= res!239806 (= from!863 i!563))))

(declare-fun minValue!515 () V!15251)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15251)

(declare-datatypes ((tuple2!6866 0))(
  ( (tuple2!6867 (_1!3443 (_ BitVec 64)) (_2!3443 V!15251)) )
))
(declare-datatypes ((List!6929 0))(
  ( (Nil!6926) (Cons!6925 (h!7781 tuple2!6866) (t!12111 List!6929)) )
))
(declare-datatypes ((ListLongMap!5793 0))(
  ( (ListLongMap!5794 (toList!2912 List!6929)) )
))
(declare-fun lt!189537 () ListLongMap!5793)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!189536 () array!25059)

(declare-fun getCurrentListMapNoExtraKeys!1122 (array!25057 array!25059 (_ BitVec 32) (_ BitVec 32) V!15251 V!15251 (_ BitVec 32) Int) ListLongMap!5793)

(assert (=> b!412699 (= lt!189537 (getCurrentListMapNoExtraKeys!1122 lt!189540 lt!189536 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15251)

(assert (=> b!412699 (= lt!189536 (array!25060 (store (arr!11976 _values!549) i!563 (ValueCellFull!4961 v!412)) (size!12328 _values!549)))))

(declare-fun lt!189538 () ListLongMap!5793)

(assert (=> b!412699 (= lt!189538 (getCurrentListMapNoExtraKeys!1122 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412700 () Bool)

(declare-fun res!239814 () Bool)

(assert (=> b!412700 (=> (not res!239814) (not e!246888))))

(assert (=> b!412700 (= res!239814 (and (= (size!12328 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12327 _keys!709) (size!12328 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412701 () Bool)

(declare-fun res!239815 () Bool)

(assert (=> b!412701 (=> (not res!239815) (not e!246888))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412701 (= res!239815 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412702 () Bool)

(declare-fun res!239810 () Bool)

(assert (=> b!412702 (=> (not res!239810) (not e!246888))))

(assert (=> b!412702 (= res!239810 (or (= (select (arr!11975 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11975 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412703 () Bool)

(declare-fun res!239813 () Bool)

(assert (=> b!412703 (=> (not res!239813) (not e!246888))))

(assert (=> b!412703 (= res!239813 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12327 _keys!709))))))

(declare-fun b!412704 () Bool)

(declare-fun e!246882 () Bool)

(assert (=> b!412704 (= e!246882 tp_is_empty!10609)))

(declare-fun b!412705 () Bool)

(assert (=> b!412705 (= e!246884 (and e!246882 mapRes!17535))))

(declare-fun condMapEmpty!17535 () Bool)

(declare-fun mapDefault!17535 () ValueCell!4961)

