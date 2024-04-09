; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35898 () Bool)

(assert start!35898)

(declare-fun b!360584 () Bool)

(declare-fun res!200660 () Bool)

(declare-fun e!220756 () Bool)

(assert (=> b!360584 (=> (not res!200660) (not e!220756))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20177 0))(
  ( (array!20178 (arr!9578 (Array (_ BitVec 32) (_ BitVec 64))) (size!9930 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20177)

(assert (=> b!360584 (= res!200660 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9930 _keys!1456))))))

(declare-fun b!360585 () Bool)

(declare-fun res!200655 () Bool)

(assert (=> b!360585 (=> (not res!200655) (not e!220756))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360585 (= res!200655 (validKeyInArray!0 k!1077))))

(declare-fun b!360586 () Bool)

(declare-fun res!200654 () Bool)

(assert (=> b!360586 (=> (not res!200654) (not e!220756))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!12079 0))(
  ( (V!12080 (val!4208 Int)) )
))
(declare-datatypes ((ValueCell!3820 0))(
  ( (ValueCellFull!3820 (v!6398 V!12079)) (EmptyCell!3820) )
))
(declare-datatypes ((array!20179 0))(
  ( (array!20180 (arr!9579 (Array (_ BitVec 32) ValueCell!3820)) (size!9931 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20179)

(assert (=> b!360586 (= res!200654 (and (= (size!9931 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9930 _keys!1456) (size!9931 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360587 () Bool)

(declare-fun res!200661 () Bool)

(assert (=> b!360587 (=> (not res!200661) (not e!220756))))

(declare-datatypes ((List!5521 0))(
  ( (Nil!5518) (Cons!5517 (h!6373 (_ BitVec 64)) (t!10679 List!5521)) )
))
(declare-fun arrayNoDuplicates!0 (array!20177 (_ BitVec 32) List!5521) Bool)

(assert (=> b!360587 (= res!200661 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5518))))

(declare-fun mapNonEmpty!14001 () Bool)

(declare-fun mapRes!14001 () Bool)

(declare-fun tp!28068 () Bool)

(declare-fun e!220754 () Bool)

(assert (=> mapNonEmpty!14001 (= mapRes!14001 (and tp!28068 e!220754))))

(declare-fun mapValue!14001 () ValueCell!3820)

(declare-fun mapRest!14001 () (Array (_ BitVec 32) ValueCell!3820))

(declare-fun mapKey!14001 () (_ BitVec 32))

(assert (=> mapNonEmpty!14001 (= (arr!9579 _values!1208) (store mapRest!14001 mapKey!14001 mapValue!14001))))

(declare-fun res!200657 () Bool)

(assert (=> start!35898 (=> (not res!200657) (not e!220756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35898 (= res!200657 (validMask!0 mask!1842))))

(assert (=> start!35898 e!220756))

(declare-fun tp_is_empty!8327 () Bool)

(assert (=> start!35898 tp_is_empty!8327))

(assert (=> start!35898 true))

(declare-fun array_inv!7042 (array!20177) Bool)

(assert (=> start!35898 (array_inv!7042 _keys!1456)))

(declare-fun e!220755 () Bool)

(declare-fun array_inv!7043 (array!20179) Bool)

(assert (=> start!35898 (and (array_inv!7043 _values!1208) e!220755)))

(declare-fun b!360588 () Bool)

(declare-fun e!220752 () Bool)

(assert (=> b!360588 (= e!220752 tp_is_empty!8327)))

(declare-fun b!360589 () Bool)

(declare-fun res!200656 () Bool)

(assert (=> b!360589 (=> (not res!200656) (not e!220756))))

(declare-fun arrayContainsKey!0 (array!20177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360589 (= res!200656 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360590 () Bool)

(declare-fun res!200658 () Bool)

(assert (=> b!360590 (=> (not res!200658) (not e!220756))))

(assert (=> b!360590 (= res!200658 (not (= (select (arr!9578 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360591 () Bool)

(assert (=> b!360591 (= e!220755 (and e!220752 mapRes!14001))))

(declare-fun condMapEmpty!14001 () Bool)

(declare-fun mapDefault!14001 () ValueCell!3820)

