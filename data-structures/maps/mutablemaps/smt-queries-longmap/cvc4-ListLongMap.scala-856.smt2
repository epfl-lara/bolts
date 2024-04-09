; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20248 () Bool)

(assert start!20248)

(declare-fun b_free!4895 () Bool)

(declare-fun b_next!4895 () Bool)

(assert (=> start!20248 (= b_free!4895 (not b_next!4895))))

(declare-fun tp!17717 () Bool)

(declare-fun b_and!11659 () Bool)

(assert (=> start!20248 (= tp!17717 b_and!11659)))

(declare-fun b!198930 () Bool)

(declare-fun res!94456 () Bool)

(declare-fun e!130671 () Bool)

(assert (=> b!198930 (=> (not res!94456) (not e!130671))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198930 (= res!94456 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8195 () Bool)

(declare-fun mapRes!8195 () Bool)

(declare-fun tp!17716 () Bool)

(declare-fun e!130674 () Bool)

(assert (=> mapNonEmpty!8195 (= mapRes!8195 (and tp!17716 e!130674))))

(declare-datatypes ((V!5981 0))(
  ( (V!5982 (val!2420 Int)) )
))
(declare-datatypes ((ValueCell!2032 0))(
  ( (ValueCellFull!2032 (v!4386 V!5981)) (EmptyCell!2032) )
))
(declare-fun mapValue!8195 () ValueCell!2032)

(declare-datatypes ((array!8742 0))(
  ( (array!8743 (arr!4121 (Array (_ BitVec 32) ValueCell!2032)) (size!4446 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8742)

(declare-fun mapRest!8195 () (Array (_ BitVec 32) ValueCell!2032))

(declare-fun mapKey!8195 () (_ BitVec 32))

(assert (=> mapNonEmpty!8195 (= (arr!4121 _values!649) (store mapRest!8195 mapKey!8195 mapValue!8195))))

(declare-fun b!198931 () Bool)

(declare-fun e!130673 () Bool)

(declare-fun tp_is_empty!4751 () Bool)

(assert (=> b!198931 (= e!130673 tp_is_empty!4751)))

(declare-fun res!94458 () Bool)

(assert (=> start!20248 (=> (not res!94458) (not e!130671))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20248 (= res!94458 (validMask!0 mask!1149))))

(assert (=> start!20248 e!130671))

(declare-fun e!130675 () Bool)

(declare-fun array_inv!2689 (array!8742) Bool)

(assert (=> start!20248 (and (array_inv!2689 _values!649) e!130675)))

(assert (=> start!20248 true))

(assert (=> start!20248 tp_is_empty!4751))

(declare-datatypes ((array!8744 0))(
  ( (array!8745 (arr!4122 (Array (_ BitVec 32) (_ BitVec 64))) (size!4447 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8744)

(declare-fun array_inv!2690 (array!8744) Bool)

(assert (=> start!20248 (array_inv!2690 _keys!825)))

(assert (=> start!20248 tp!17717))

(declare-fun b!198932 () Bool)

(declare-fun res!94459 () Bool)

(assert (=> b!198932 (=> (not res!94459) (not e!130671))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198932 (= res!94459 (= (select (arr!4122 _keys!825) i!601) k!843))))

(declare-fun b!198933 () Bool)

(declare-fun res!94462 () Bool)

(assert (=> b!198933 (=> (not res!94462) (not e!130671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8744 (_ BitVec 32)) Bool)

(assert (=> b!198933 (= res!94462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198934 () Bool)

(assert (=> b!198934 (= e!130675 (and e!130673 mapRes!8195))))

(declare-fun condMapEmpty!8195 () Bool)

(declare-fun mapDefault!8195 () ValueCell!2032)

