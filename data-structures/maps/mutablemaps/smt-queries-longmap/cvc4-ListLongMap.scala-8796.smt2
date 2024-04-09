; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107040 () Bool)

(assert start!107040)

(declare-fun res!844420 () Bool)

(declare-fun e!723008 () Bool)

(assert (=> start!107040 (=> (not res!844420) (not e!723008))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107040 (= res!844420 (validMask!0 mask!1730))))

(assert (=> start!107040 e!723008))

(declare-datatypes ((V!48783 0))(
  ( (V!48784 (val!16421 Int)) )
))
(declare-datatypes ((ValueCell!15493 0))(
  ( (ValueCellFull!15493 (v!19056 V!48783)) (EmptyCell!15493) )
))
(declare-datatypes ((array!82633 0))(
  ( (array!82634 (arr!39849 (Array (_ BitVec 32) ValueCell!15493)) (size!40386 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82633)

(declare-fun e!723007 () Bool)

(declare-fun array_inv!30281 (array!82633) Bool)

(assert (=> start!107040 (and (array_inv!30281 _values!1134) e!723007)))

(assert (=> start!107040 true))

(declare-datatypes ((array!82635 0))(
  ( (array!82636 (arr!39850 (Array (_ BitVec 32) (_ BitVec 64))) (size!40387 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82635)

(declare-fun array_inv!30282 (array!82635) Bool)

(assert (=> start!107040 (array_inv!30282 _keys!1364)))

(declare-fun b!1268637 () Bool)

(assert (=> b!1268637 (= e!723008 false)))

(declare-fun lt!574412 () Bool)

(declare-datatypes ((List!28568 0))(
  ( (Nil!28565) (Cons!28564 (h!29773 (_ BitVec 64)) (t!42104 List!28568)) )
))
(declare-fun arrayNoDuplicates!0 (array!82635 (_ BitVec 32) List!28568) Bool)

(assert (=> b!1268637 (= lt!574412 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28565))))

(declare-fun b!1268638 () Bool)

(declare-fun res!844421 () Bool)

(assert (=> b!1268638 (=> (not res!844421) (not e!723008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82635 (_ BitVec 32)) Bool)

(assert (=> b!1268638 (= res!844421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268639 () Bool)

(declare-fun e!723004 () Bool)

(declare-fun tp_is_empty!32693 () Bool)

(assert (=> b!1268639 (= e!723004 tp_is_empty!32693)))

(declare-fun b!1268640 () Bool)

(declare-fun e!723005 () Bool)

(assert (=> b!1268640 (= e!723005 tp_is_empty!32693)))

(declare-fun mapNonEmpty!50620 () Bool)

(declare-fun mapRes!50620 () Bool)

(declare-fun tp!96800 () Bool)

(assert (=> mapNonEmpty!50620 (= mapRes!50620 (and tp!96800 e!723004))))

(declare-fun mapKey!50620 () (_ BitVec 32))

(declare-fun mapRest!50620 () (Array (_ BitVec 32) ValueCell!15493))

(declare-fun mapValue!50620 () ValueCell!15493)

(assert (=> mapNonEmpty!50620 (= (arr!39849 _values!1134) (store mapRest!50620 mapKey!50620 mapValue!50620))))

(declare-fun b!1268641 () Bool)

(declare-fun res!844419 () Bool)

(assert (=> b!1268641 (=> (not res!844419) (not e!723008))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268641 (= res!844419 (and (= (size!40386 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40387 _keys!1364) (size!40386 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268642 () Bool)

(assert (=> b!1268642 (= e!723007 (and e!723005 mapRes!50620))))

(declare-fun condMapEmpty!50620 () Bool)

(declare-fun mapDefault!50620 () ValueCell!15493)

