; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107252 () Bool)

(assert start!107252)

(declare-fun b!1270869 () Bool)

(declare-fun e!724594 () Bool)

(declare-fun tp_is_empty!32905 () Bool)

(assert (=> b!1270869 (= e!724594 tp_is_empty!32905)))

(declare-fun b!1270870 () Bool)

(declare-fun res!845697 () Bool)

(declare-fun e!724598 () Bool)

(assert (=> b!1270870 (=> (not res!845697) (not e!724598))))

(declare-datatypes ((V!49067 0))(
  ( (V!49068 (val!16527 Int)) )
))
(declare-datatypes ((ValueCell!15599 0))(
  ( (ValueCellFull!15599 (v!19162 V!49067)) (EmptyCell!15599) )
))
(declare-datatypes ((array!83029 0))(
  ( (array!83030 (arr!40047 (Array (_ BitVec 32) ValueCell!15599)) (size!40584 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83029)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83031 0))(
  ( (array!83032 (arr!40048 (Array (_ BitVec 32) (_ BitVec 64))) (size!40585 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83031)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270870 (= res!845697 (and (= (size!40584 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40585 _keys!1364) (size!40584 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845699 () Bool)

(assert (=> start!107252 (=> (not res!845699) (not e!724598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107252 (= res!845699 (validMask!0 mask!1730))))

(assert (=> start!107252 e!724598))

(declare-fun e!724597 () Bool)

(declare-fun array_inv!30405 (array!83029) Bool)

(assert (=> start!107252 (and (array_inv!30405 _values!1134) e!724597)))

(assert (=> start!107252 true))

(declare-fun array_inv!30406 (array!83031) Bool)

(assert (=> start!107252 (array_inv!30406 _keys!1364)))

(declare-fun b!1270871 () Bool)

(declare-fun e!724595 () Bool)

(assert (=> b!1270871 (= e!724595 tp_is_empty!32905)))

(declare-fun b!1270872 () Bool)

(declare-fun res!845698 () Bool)

(assert (=> b!1270872 (=> (not res!845698) (not e!724598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83031 (_ BitVec 32)) Bool)

(assert (=> b!1270872 (= res!845698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270873 () Bool)

(assert (=> b!1270873 (= e!724598 false)))

(declare-fun lt!574730 () Bool)

(declare-datatypes ((List!28671 0))(
  ( (Nil!28668) (Cons!28667 (h!29876 (_ BitVec 64)) (t!42207 List!28671)) )
))
(declare-fun arrayNoDuplicates!0 (array!83031 (_ BitVec 32) List!28671) Bool)

(assert (=> b!1270873 (= lt!574730 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28668))))

(declare-fun b!1270874 () Bool)

(declare-fun mapRes!50938 () Bool)

(assert (=> b!1270874 (= e!724597 (and e!724594 mapRes!50938))))

(declare-fun condMapEmpty!50938 () Bool)

(declare-fun mapDefault!50938 () ValueCell!15599)

