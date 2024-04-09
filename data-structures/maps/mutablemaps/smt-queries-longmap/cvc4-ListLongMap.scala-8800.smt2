; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107064 () Bool)

(assert start!107064)

(declare-fun b!1268853 () Bool)

(declare-fun e!723188 () Bool)

(assert (=> b!1268853 (= e!723188 false)))

(declare-fun lt!574448 () Bool)

(declare-datatypes ((array!82677 0))(
  ( (array!82678 (arr!39871 (Array (_ BitVec 32) (_ BitVec 64))) (size!40408 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82677)

(declare-datatypes ((List!28576 0))(
  ( (Nil!28573) (Cons!28572 (h!29781 (_ BitVec 64)) (t!42112 List!28576)) )
))
(declare-fun arrayNoDuplicates!0 (array!82677 (_ BitVec 32) List!28576) Bool)

(assert (=> b!1268853 (= lt!574448 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28573))))

(declare-fun b!1268854 () Bool)

(declare-fun e!723184 () Bool)

(declare-fun tp_is_empty!32717 () Bool)

(assert (=> b!1268854 (= e!723184 tp_is_empty!32717)))

(declare-fun mapNonEmpty!50656 () Bool)

(declare-fun mapRes!50656 () Bool)

(declare-fun tp!96836 () Bool)

(assert (=> mapNonEmpty!50656 (= mapRes!50656 (and tp!96836 e!723184))))

(declare-datatypes ((V!48815 0))(
  ( (V!48816 (val!16433 Int)) )
))
(declare-datatypes ((ValueCell!15505 0))(
  ( (ValueCellFull!15505 (v!19068 V!48815)) (EmptyCell!15505) )
))
(declare-datatypes ((array!82679 0))(
  ( (array!82680 (arr!39872 (Array (_ BitVec 32) ValueCell!15505)) (size!40409 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82679)

(declare-fun mapValue!50656 () ValueCell!15505)

(declare-fun mapRest!50656 () (Array (_ BitVec 32) ValueCell!15505))

(declare-fun mapKey!50656 () (_ BitVec 32))

(assert (=> mapNonEmpty!50656 (= (arr!39872 _values!1134) (store mapRest!50656 mapKey!50656 mapValue!50656))))

(declare-fun res!844528 () Bool)

(assert (=> start!107064 (=> (not res!844528) (not e!723188))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107064 (= res!844528 (validMask!0 mask!1730))))

(assert (=> start!107064 e!723188))

(declare-fun e!723185 () Bool)

(declare-fun array_inv!30297 (array!82679) Bool)

(assert (=> start!107064 (and (array_inv!30297 _values!1134) e!723185)))

(assert (=> start!107064 true))

(declare-fun array_inv!30298 (array!82677) Bool)

(assert (=> start!107064 (array_inv!30298 _keys!1364)))

(declare-fun b!1268855 () Bool)

(declare-fun res!844527 () Bool)

(assert (=> b!1268855 (=> (not res!844527) (not e!723188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82677 (_ BitVec 32)) Bool)

(assert (=> b!1268855 (= res!844527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268856 () Bool)

(declare-fun res!844529 () Bool)

(assert (=> b!1268856 (=> (not res!844529) (not e!723188))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268856 (= res!844529 (and (= (size!40409 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40408 _keys!1364) (size!40409 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268857 () Bool)

(declare-fun e!723186 () Bool)

(assert (=> b!1268857 (= e!723185 (and e!723186 mapRes!50656))))

(declare-fun condMapEmpty!50656 () Bool)

(declare-fun mapDefault!50656 () ValueCell!15505)

