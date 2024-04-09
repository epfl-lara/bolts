; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93692 () Bool)

(assert start!93692)

(declare-fun b!1059524 () Bool)

(declare-fun e!603104 () Bool)

(declare-fun tp_is_empty!24961 () Bool)

(assert (=> b!1059524 (= e!603104 tp_is_empty!24961)))

(declare-fun mapNonEmpty!39106 () Bool)

(declare-fun mapRes!39106 () Bool)

(declare-fun tp!74913 () Bool)

(assert (=> mapNonEmpty!39106 (= mapRes!39106 (and tp!74913 e!603104))))

(declare-fun mapKey!39106 () (_ BitVec 32))

(declare-datatypes ((V!38417 0))(
  ( (V!38418 (val!12531 Int)) )
))
(declare-datatypes ((ValueCell!11777 0))(
  ( (ValueCellFull!11777 (v!15142 V!38417)) (EmptyCell!11777) )
))
(declare-fun mapRest!39106 () (Array (_ BitVec 32) ValueCell!11777))

(declare-fun mapValue!39106 () ValueCell!11777)

(declare-datatypes ((array!66930 0))(
  ( (array!66931 (arr!32171 (Array (_ BitVec 32) ValueCell!11777)) (size!32708 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66930)

(assert (=> mapNonEmpty!39106 (= (arr!32171 _values!955) (store mapRest!39106 mapKey!39106 mapValue!39106))))

(declare-fun b!1059525 () Bool)

(declare-fun e!603103 () Bool)

(declare-fun e!603105 () Bool)

(assert (=> b!1059525 (= e!603103 (and e!603105 mapRes!39106))))

(declare-fun condMapEmpty!39106 () Bool)

(declare-fun mapDefault!39106 () ValueCell!11777)

