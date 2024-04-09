; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94472 () Bool)

(assert start!94472)

(declare-fun b_free!21763 () Bool)

(declare-fun b_next!21763 () Bool)

(assert (=> start!94472 (= b_free!21763 (not b_next!21763))))

(declare-fun tp!76737 () Bool)

(declare-fun b_and!34573 () Bool)

(assert (=> start!94472 (= tp!76737 b_and!34573)))

(declare-fun res!712608 () Bool)

(declare-fun e!609113 () Bool)

(assert (=> start!94472 (=> (not res!712608) (not e!609113))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94472 (= res!712608 (validMask!0 mask!1515))))

(assert (=> start!94472 e!609113))

(assert (=> start!94472 true))

(declare-fun tp_is_empty!25573 () Bool)

(assert (=> start!94472 tp_is_empty!25573))

(declare-datatypes ((V!39233 0))(
  ( (V!39234 (val!12837 Int)) )
))
(declare-datatypes ((ValueCell!12083 0))(
  ( (ValueCellFull!12083 (v!15452 V!39233)) (EmptyCell!12083) )
))
(declare-datatypes ((array!68100 0))(
  ( (array!68101 (arr!32746 (Array (_ BitVec 32) ValueCell!12083)) (size!33283 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68100)

(declare-fun e!609109 () Bool)

(declare-fun array_inv!25184 (array!68100) Bool)

(assert (=> start!94472 (and (array_inv!25184 _values!955) e!609109)))

(assert (=> start!94472 tp!76737))

(declare-datatypes ((array!68102 0))(
  ( (array!68103 (arr!32747 (Array (_ BitVec 32) (_ BitVec 64))) (size!33284 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68102)

(declare-fun array_inv!25185 (array!68102) Bool)

(assert (=> start!94472 (array_inv!25185 _keys!1163)))

(declare-fun b!1067751 () Bool)

(declare-fun res!712609 () Bool)

(assert (=> b!1067751 (=> (not res!712609) (not e!609113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68102 (_ BitVec 32)) Bool)

(assert (=> b!1067751 (= res!712609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40054 () Bool)

(declare-fun mapRes!40054 () Bool)

(declare-fun tp!76736 () Bool)

(declare-fun e!609114 () Bool)

(assert (=> mapNonEmpty!40054 (= mapRes!40054 (and tp!76736 e!609114))))

(declare-fun mapKey!40054 () (_ BitVec 32))

(declare-fun mapRest!40054 () (Array (_ BitVec 32) ValueCell!12083))

(declare-fun mapValue!40054 () ValueCell!12083)

(assert (=> mapNonEmpty!40054 (= (arr!32746 _values!955) (store mapRest!40054 mapKey!40054 mapValue!40054))))

(declare-fun mapIsEmpty!40054 () Bool)

(assert (=> mapIsEmpty!40054 mapRes!40054))

(declare-fun b!1067752 () Bool)

(declare-fun e!609111 () Bool)

(assert (=> b!1067752 (= e!609109 (and e!609111 mapRes!40054))))

(declare-fun condMapEmpty!40054 () Bool)

(declare-fun mapDefault!40054 () ValueCell!12083)

