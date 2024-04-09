; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107338 () Bool)

(assert start!107338)

(declare-fun b!1271643 () Bool)

(declare-fun e!725242 () Bool)

(declare-fun e!725239 () Bool)

(declare-fun mapRes!51067 () Bool)

(assert (=> b!1271643 (= e!725242 (and e!725239 mapRes!51067))))

(declare-fun condMapEmpty!51067 () Bool)

(declare-datatypes ((V!49181 0))(
  ( (V!49182 (val!16570 Int)) )
))
(declare-datatypes ((ValueCell!15642 0))(
  ( (ValueCellFull!15642 (v!19205 V!49181)) (EmptyCell!15642) )
))
(declare-datatypes ((array!83179 0))(
  ( (array!83180 (arr!40122 (Array (_ BitVec 32) ValueCell!15642)) (size!40659 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83179)

(declare-fun mapDefault!51067 () ValueCell!15642)

(assert (=> b!1271643 (= condMapEmpty!51067 (= (arr!40122 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15642)) mapDefault!51067)))))

(declare-fun b!1271644 () Bool)

(declare-fun res!846085 () Bool)

(declare-fun e!725241 () Bool)

(assert (=> b!1271644 (=> (not res!846085) (not e!725241))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83181 0))(
  ( (array!83182 (arr!40123 (Array (_ BitVec 32) (_ BitVec 64))) (size!40660 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83181)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271644 (= res!846085 (and (= (size!40659 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40660 _keys!1364) (size!40659 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271645 () Bool)

(declare-fun e!725243 () Bool)

(declare-fun tp_is_empty!32991 () Bool)

(assert (=> b!1271645 (= e!725243 tp_is_empty!32991)))

(declare-fun b!1271646 () Bool)

(assert (=> b!1271646 (= e!725241 false)))

(declare-fun lt!574859 () Bool)

(declare-datatypes ((List!28696 0))(
  ( (Nil!28693) (Cons!28692 (h!29901 (_ BitVec 64)) (t!42232 List!28696)) )
))
(declare-fun arrayNoDuplicates!0 (array!83181 (_ BitVec 32) List!28696) Bool)

(assert (=> b!1271646 (= lt!574859 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28693))))

(declare-fun res!846086 () Bool)

(assert (=> start!107338 (=> (not res!846086) (not e!725241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107338 (= res!846086 (validMask!0 mask!1730))))

(assert (=> start!107338 e!725241))

(declare-fun array_inv!30455 (array!83179) Bool)

(assert (=> start!107338 (and (array_inv!30455 _values!1134) e!725242)))

(assert (=> start!107338 true))

(declare-fun array_inv!30456 (array!83181) Bool)

(assert (=> start!107338 (array_inv!30456 _keys!1364)))

(declare-fun b!1271647 () Bool)

(assert (=> b!1271647 (= e!725239 tp_is_empty!32991)))

(declare-fun mapIsEmpty!51067 () Bool)

(assert (=> mapIsEmpty!51067 mapRes!51067))

(declare-fun b!1271648 () Bool)

(declare-fun res!846084 () Bool)

(assert (=> b!1271648 (=> (not res!846084) (not e!725241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83181 (_ BitVec 32)) Bool)

(assert (=> b!1271648 (= res!846084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51067 () Bool)

(declare-fun tp!97409 () Bool)

(assert (=> mapNonEmpty!51067 (= mapRes!51067 (and tp!97409 e!725243))))

(declare-fun mapValue!51067 () ValueCell!15642)

(declare-fun mapRest!51067 () (Array (_ BitVec 32) ValueCell!15642))

(declare-fun mapKey!51067 () (_ BitVec 32))

(assert (=> mapNonEmpty!51067 (= (arr!40122 _values!1134) (store mapRest!51067 mapKey!51067 mapValue!51067))))

(assert (= (and start!107338 res!846086) b!1271644))

(assert (= (and b!1271644 res!846085) b!1271648))

(assert (= (and b!1271648 res!846084) b!1271646))

(assert (= (and b!1271643 condMapEmpty!51067) mapIsEmpty!51067))

(assert (= (and b!1271643 (not condMapEmpty!51067)) mapNonEmpty!51067))

(get-info :version)

(assert (= (and mapNonEmpty!51067 ((_ is ValueCellFull!15642) mapValue!51067)) b!1271645))

(assert (= (and b!1271643 ((_ is ValueCellFull!15642) mapDefault!51067)) b!1271647))

(assert (= start!107338 b!1271643))

(declare-fun m!1169537 () Bool)

(assert (=> b!1271646 m!1169537))

(declare-fun m!1169539 () Bool)

(assert (=> start!107338 m!1169539))

(declare-fun m!1169541 () Bool)

(assert (=> start!107338 m!1169541))

(declare-fun m!1169543 () Bool)

(assert (=> start!107338 m!1169543))

(declare-fun m!1169545 () Bool)

(assert (=> b!1271648 m!1169545))

(declare-fun m!1169547 () Bool)

(assert (=> mapNonEmpty!51067 m!1169547))

(check-sat (not b!1271646) (not b!1271648) (not start!107338) (not mapNonEmpty!51067) tp_is_empty!32991)
(check-sat)
