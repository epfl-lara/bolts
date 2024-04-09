; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107186 () Bool)

(assert start!107186)

(declare-fun b!1270275 () Bool)

(declare-fun res!845400 () Bool)

(declare-fun e!724102 () Bool)

(assert (=> b!1270275 (=> (not res!845400) (not e!724102))))

(declare-datatypes ((V!48979 0))(
  ( (V!48980 (val!16494 Int)) )
))
(declare-datatypes ((ValueCell!15566 0))(
  ( (ValueCellFull!15566 (v!19129 V!48979)) (EmptyCell!15566) )
))
(declare-datatypes ((array!82907 0))(
  ( (array!82908 (arr!39986 (Array (_ BitVec 32) ValueCell!15566)) (size!40523 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82907)

(declare-datatypes ((array!82909 0))(
  ( (array!82910 (arr!39987 (Array (_ BitVec 32) (_ BitVec 64))) (size!40524 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82909)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1270275 (= res!845400 (and (= (size!40523 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40524 _keys!1364) (size!40523 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845402 () Bool)

(assert (=> start!107186 (=> (not res!845402) (not e!724102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107186 (= res!845402 (validMask!0 mask!1730))))

(assert (=> start!107186 e!724102))

(declare-fun e!724100 () Bool)

(declare-fun array_inv!30371 (array!82907) Bool)

(assert (=> start!107186 (and (array_inv!30371 _values!1134) e!724100)))

(assert (=> start!107186 true))

(declare-fun array_inv!30372 (array!82909) Bool)

(assert (=> start!107186 (array_inv!30372 _keys!1364)))

(declare-fun b!1270276 () Bool)

(declare-fun e!724099 () Bool)

(declare-fun tp_is_empty!32839 () Bool)

(assert (=> b!1270276 (= e!724099 tp_is_empty!32839)))

(declare-fun b!1270277 () Bool)

(declare-fun e!724101 () Bool)

(assert (=> b!1270277 (= e!724101 tp_is_empty!32839)))

(declare-fun b!1270278 () Bool)

(declare-fun res!845401 () Bool)

(assert (=> b!1270278 (=> (not res!845401) (not e!724102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82909 (_ BitVec 32)) Bool)

(assert (=> b!1270278 (= res!845401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270279 () Bool)

(assert (=> b!1270279 (= e!724102 false)))

(declare-fun lt!574631 () Bool)

(declare-datatypes ((List!28649 0))(
  ( (Nil!28646) (Cons!28645 (h!29854 (_ BitVec 64)) (t!42185 List!28649)) )
))
(declare-fun arrayNoDuplicates!0 (array!82909 (_ BitVec 32) List!28649) Bool)

(assert (=> b!1270279 (= lt!574631 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28646))))

(declare-fun b!1270280 () Bool)

(declare-fun mapRes!50839 () Bool)

(assert (=> b!1270280 (= e!724100 (and e!724099 mapRes!50839))))

(declare-fun condMapEmpty!50839 () Bool)

(declare-fun mapDefault!50839 () ValueCell!15566)

