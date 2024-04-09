; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39034 () Bool)

(assert start!39034)

(declare-fun b!409004 () Bool)

(declare-fun res!236862 () Bool)

(declare-fun e!245406 () Bool)

(assert (=> b!409004 (=> (not res!236862) (not e!245406))))

(declare-datatypes ((array!24743 0))(
  ( (array!24744 (arr!11818 (Array (_ BitVec 32) (_ BitVec 64))) (size!12170 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24743)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409004 (= res!236862 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409005 () Bool)

(declare-fun res!236854 () Bool)

(assert (=> b!409005 (=> (not res!236854) (not e!245406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409005 (= res!236854 (validKeyInArray!0 k!794))))

(declare-fun b!409007 () Bool)

(declare-fun res!236858 () Bool)

(assert (=> b!409007 (=> (not res!236858) (not e!245406))))

(declare-datatypes ((V!15031 0))(
  ( (V!15032 (val!5267 Int)) )
))
(declare-datatypes ((ValueCell!4879 0))(
  ( (ValueCellFull!4879 (v!7510 V!15031)) (EmptyCell!4879) )
))
(declare-datatypes ((array!24745 0))(
  ( (array!24746 (arr!11819 (Array (_ BitVec 32) ValueCell!4879)) (size!12171 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24745)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409007 (= res!236858 (and (= (size!12171 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12170 _keys!709) (size!12171 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17289 () Bool)

(declare-fun mapRes!17289 () Bool)

(assert (=> mapIsEmpty!17289 mapRes!17289))

(declare-fun b!409008 () Bool)

(declare-fun e!245402 () Bool)

(assert (=> b!409008 (= e!245406 e!245402)))

(declare-fun res!236855 () Bool)

(assert (=> b!409008 (=> (not res!236855) (not e!245402))))

(declare-fun lt!188877 () array!24743)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24743 (_ BitVec 32)) Bool)

(assert (=> b!409008 (= res!236855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188877 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409008 (= lt!188877 (array!24744 (store (arr!11818 _keys!709) i!563 k!794) (size!12170 _keys!709)))))

(declare-fun b!409009 () Bool)

(declare-fun res!236856 () Bool)

(assert (=> b!409009 (=> (not res!236856) (not e!245406))))

(assert (=> b!409009 (= res!236856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409010 () Bool)

(declare-fun res!236860 () Bool)

(assert (=> b!409010 (=> (not res!236860) (not e!245406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409010 (= res!236860 (validMask!0 mask!1025))))

(declare-fun b!409011 () Bool)

(declare-fun res!236861 () Bool)

(assert (=> b!409011 (=> (not res!236861) (not e!245406))))

(declare-datatypes ((List!6821 0))(
  ( (Nil!6818) (Cons!6817 (h!7673 (_ BitVec 64)) (t!12003 List!6821)) )
))
(declare-fun arrayNoDuplicates!0 (array!24743 (_ BitVec 32) List!6821) Bool)

(assert (=> b!409011 (= res!236861 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6818))))

(declare-fun b!409006 () Bool)

(declare-fun res!236857 () Bool)

(assert (=> b!409006 (=> (not res!236857) (not e!245406))))

(assert (=> b!409006 (= res!236857 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12170 _keys!709))))))

(declare-fun res!236853 () Bool)

(assert (=> start!39034 (=> (not res!236853) (not e!245406))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39034 (= res!236853 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12170 _keys!709))))))

(assert (=> start!39034 e!245406))

(assert (=> start!39034 true))

(declare-fun e!245403 () Bool)

(declare-fun array_inv!8630 (array!24745) Bool)

(assert (=> start!39034 (and (array_inv!8630 _values!549) e!245403)))

(declare-fun array_inv!8631 (array!24743) Bool)

(assert (=> start!39034 (array_inv!8631 _keys!709)))

(declare-fun b!409012 () Bool)

(declare-fun e!245407 () Bool)

(declare-fun tp_is_empty!10445 () Bool)

(assert (=> b!409012 (= e!245407 tp_is_empty!10445)))

(declare-fun b!409013 () Bool)

(declare-fun res!236859 () Bool)

(assert (=> b!409013 (=> (not res!236859) (not e!245406))))

(assert (=> b!409013 (= res!236859 (or (= (select (arr!11818 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11818 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409014 () Bool)

(assert (=> b!409014 (= e!245402 false)))

(declare-fun lt!188876 () Bool)

(assert (=> b!409014 (= lt!188876 (arrayNoDuplicates!0 lt!188877 #b00000000000000000000000000000000 Nil!6818))))

(declare-fun b!409015 () Bool)

(declare-fun e!245404 () Bool)

(assert (=> b!409015 (= e!245404 tp_is_empty!10445)))

(declare-fun mapNonEmpty!17289 () Bool)

(declare-fun tp!33408 () Bool)

(assert (=> mapNonEmpty!17289 (= mapRes!17289 (and tp!33408 e!245407))))

(declare-fun mapValue!17289 () ValueCell!4879)

(declare-fun mapKey!17289 () (_ BitVec 32))

(declare-fun mapRest!17289 () (Array (_ BitVec 32) ValueCell!4879))

(assert (=> mapNonEmpty!17289 (= (arr!11819 _values!549) (store mapRest!17289 mapKey!17289 mapValue!17289))))

(declare-fun b!409016 () Bool)

(assert (=> b!409016 (= e!245403 (and e!245404 mapRes!17289))))

(declare-fun condMapEmpty!17289 () Bool)

(declare-fun mapDefault!17289 () ValueCell!4879)

