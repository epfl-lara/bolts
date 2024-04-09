; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107042 () Bool)

(assert start!107042)

(declare-fun b!1268655 () Bool)

(declare-fun res!844428 () Bool)

(declare-fun e!723019 () Bool)

(assert (=> b!1268655 (=> (not res!844428) (not e!723019))))

(declare-datatypes ((V!48787 0))(
  ( (V!48788 (val!16422 Int)) )
))
(declare-datatypes ((ValueCell!15494 0))(
  ( (ValueCellFull!15494 (v!19057 V!48787)) (EmptyCell!15494) )
))
(declare-datatypes ((array!82637 0))(
  ( (array!82638 (arr!39851 (Array (_ BitVec 32) ValueCell!15494)) (size!40388 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82637)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82639 0))(
  ( (array!82640 (arr!39852 (Array (_ BitVec 32) (_ BitVec 64))) (size!40389 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82639)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268655 (= res!844428 (and (= (size!40388 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40389 _keys!1364) (size!40388 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844429 () Bool)

(assert (=> start!107042 (=> (not res!844429) (not e!723019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107042 (= res!844429 (validMask!0 mask!1730))))

(assert (=> start!107042 e!723019))

(declare-fun e!723022 () Bool)

(declare-fun array_inv!30283 (array!82637) Bool)

(assert (=> start!107042 (and (array_inv!30283 _values!1134) e!723022)))

(assert (=> start!107042 true))

(declare-fun array_inv!30284 (array!82639) Bool)

(assert (=> start!107042 (array_inv!30284 _keys!1364)))

(declare-fun b!1268656 () Bool)

(declare-fun res!844430 () Bool)

(assert (=> b!1268656 (=> (not res!844430) (not e!723019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82639 (_ BitVec 32)) Bool)

(assert (=> b!1268656 (= res!844430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50623 () Bool)

(declare-fun mapRes!50623 () Bool)

(declare-fun tp!96803 () Bool)

(declare-fun e!723021 () Bool)

(assert (=> mapNonEmpty!50623 (= mapRes!50623 (and tp!96803 e!723021))))

(declare-fun mapValue!50623 () ValueCell!15494)

(declare-fun mapKey!50623 () (_ BitVec 32))

(declare-fun mapRest!50623 () (Array (_ BitVec 32) ValueCell!15494))

(assert (=> mapNonEmpty!50623 (= (arr!39851 _values!1134) (store mapRest!50623 mapKey!50623 mapValue!50623))))

(declare-fun b!1268657 () Bool)

(declare-fun e!723020 () Bool)

(assert (=> b!1268657 (= e!723022 (and e!723020 mapRes!50623))))

(declare-fun condMapEmpty!50623 () Bool)

(declare-fun mapDefault!50623 () ValueCell!15494)

