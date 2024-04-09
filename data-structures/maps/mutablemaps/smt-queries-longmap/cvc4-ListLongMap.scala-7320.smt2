; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93598 () Bool)

(assert start!93598)

(declare-fun res!707545 () Bool)

(declare-fun e!602633 () Bool)

(assert (=> start!93598 (=> (not res!707545) (not e!602633))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93598 (= res!707545 (validMask!0 mask!1515))))

(assert (=> start!93598 e!602633))

(assert (=> start!93598 true))

(declare-datatypes ((V!38349 0))(
  ( (V!38350 (val!12506 Int)) )
))
(declare-datatypes ((ValueCell!11752 0))(
  ( (ValueCellFull!11752 (v!15116 V!38349)) (EmptyCell!11752) )
))
(declare-datatypes ((array!66828 0))(
  ( (array!66829 (arr!32125 (Array (_ BitVec 32) ValueCell!11752)) (size!32662 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66828)

(declare-fun e!602634 () Bool)

(declare-fun array_inv!24746 (array!66828) Bool)

(assert (=> start!93598 (and (array_inv!24746 _values!955) e!602634)))

(declare-datatypes ((array!66830 0))(
  ( (array!66831 (arr!32126 (Array (_ BitVec 32) (_ BitVec 64))) (size!32663 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66830)

(declare-fun array_inv!24747 (array!66830) Bool)

(assert (=> start!93598 (array_inv!24747 _keys!1163)))

(declare-fun b!1058931 () Bool)

(declare-fun e!602636 () Bool)

(declare-fun tp_is_empty!24911 () Bool)

(assert (=> b!1058931 (= e!602636 tp_is_empty!24911)))

(declare-fun mapNonEmpty!39016 () Bool)

(declare-fun mapRes!39016 () Bool)

(declare-fun tp!74823 () Bool)

(assert (=> mapNonEmpty!39016 (= mapRes!39016 (and tp!74823 e!602636))))

(declare-fun mapValue!39016 () ValueCell!11752)

(declare-fun mapRest!39016 () (Array (_ BitVec 32) ValueCell!11752))

(declare-fun mapKey!39016 () (_ BitVec 32))

(assert (=> mapNonEmpty!39016 (= (arr!32125 _values!955) (store mapRest!39016 mapKey!39016 mapValue!39016))))

(declare-fun b!1058932 () Bool)

(declare-fun e!602637 () Bool)

(assert (=> b!1058932 (= e!602634 (and e!602637 mapRes!39016))))

(declare-fun condMapEmpty!39016 () Bool)

(declare-fun mapDefault!39016 () ValueCell!11752)

