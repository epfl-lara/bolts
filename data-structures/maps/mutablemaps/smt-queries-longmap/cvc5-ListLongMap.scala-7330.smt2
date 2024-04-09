; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93698 () Bool)

(assert start!93698)

(declare-fun b!1059577 () Bool)

(declare-fun e!603149 () Bool)

(declare-fun tp_is_empty!24967 () Bool)

(assert (=> b!1059577 (= e!603149 tp_is_empty!24967)))

(declare-fun b!1059578 () Bool)

(declare-fun res!707876 () Bool)

(declare-fun e!603148 () Bool)

(assert (=> b!1059578 (=> (not res!707876) (not e!603148))))

(declare-datatypes ((array!66940 0))(
  ( (array!66941 (arr!32176 (Array (_ BitVec 32) (_ BitVec 64))) (size!32713 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66940)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66940 (_ BitVec 32)) Bool)

(assert (=> b!1059578 (= res!707876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!707877 () Bool)

(assert (=> start!93698 (=> (not res!707877) (not e!603148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93698 (= res!707877 (validMask!0 mask!1515))))

(assert (=> start!93698 e!603148))

(assert (=> start!93698 true))

(declare-datatypes ((V!38425 0))(
  ( (V!38426 (val!12534 Int)) )
))
(declare-datatypes ((ValueCell!11780 0))(
  ( (ValueCellFull!11780 (v!15145 V!38425)) (EmptyCell!11780) )
))
(declare-datatypes ((array!66942 0))(
  ( (array!66943 (arr!32177 (Array (_ BitVec 32) ValueCell!11780)) (size!32714 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66942)

(declare-fun e!603150 () Bool)

(declare-fun array_inv!24788 (array!66942) Bool)

(assert (=> start!93698 (and (array_inv!24788 _values!955) e!603150)))

(declare-fun array_inv!24789 (array!66940) Bool)

(assert (=> start!93698 (array_inv!24789 _keys!1163)))

(declare-fun b!1059579 () Bool)

(declare-fun e!603152 () Bool)

(assert (=> b!1059579 (= e!603152 tp_is_empty!24967)))

(declare-fun mapNonEmpty!39115 () Bool)

(declare-fun mapRes!39115 () Bool)

(declare-fun tp!74922 () Bool)

(assert (=> mapNonEmpty!39115 (= mapRes!39115 (and tp!74922 e!603149))))

(declare-fun mapValue!39115 () ValueCell!11780)

(declare-fun mapKey!39115 () (_ BitVec 32))

(declare-fun mapRest!39115 () (Array (_ BitVec 32) ValueCell!11780))

(assert (=> mapNonEmpty!39115 (= (arr!32177 _values!955) (store mapRest!39115 mapKey!39115 mapValue!39115))))

(declare-fun mapIsEmpty!39115 () Bool)

(assert (=> mapIsEmpty!39115 mapRes!39115))

(declare-fun b!1059580 () Bool)

(assert (=> b!1059580 (= e!603150 (and e!603152 mapRes!39115))))

(declare-fun condMapEmpty!39115 () Bool)

(declare-fun mapDefault!39115 () ValueCell!11780)

