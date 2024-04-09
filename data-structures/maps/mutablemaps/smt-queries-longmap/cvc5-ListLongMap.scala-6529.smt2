; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83086 () Bool)

(assert start!83086)

(declare-fun res!648617 () Bool)

(declare-fun e!546129 () Bool)

(assert (=> start!83086 (=> (not res!648617) (not e!546129))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83086 (= res!648617 (validMask!0 mask!2147))))

(assert (=> start!83086 e!546129))

(assert (=> start!83086 true))

(declare-datatypes ((V!34249 0))(
  ( (V!34250 (val!11025 Int)) )
))
(declare-datatypes ((ValueCell!10493 0))(
  ( (ValueCellFull!10493 (v!13584 V!34249)) (EmptyCell!10493) )
))
(declare-datatypes ((array!59949 0))(
  ( (array!59950 (arr!28834 (Array (_ BitVec 32) ValueCell!10493)) (size!29314 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59949)

(declare-fun e!546130 () Bool)

(declare-fun array_inv!22215 (array!59949) Bool)

(assert (=> start!83086 (and (array_inv!22215 _values!1425) e!546130)))

(declare-datatypes ((array!59951 0))(
  ( (array!59952 (arr!28835 (Array (_ BitVec 32) (_ BitVec 64))) (size!29315 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59951)

(declare-fun array_inv!22216 (array!59951) Bool)

(assert (=> start!83086 (array_inv!22216 _keys!1717)))

(declare-fun b!968816 () Bool)

(assert (=> b!968816 (= e!546129 false)))

(declare-fun lt!431518 () Bool)

(declare-datatypes ((List!20128 0))(
  ( (Nil!20125) (Cons!20124 (h!21286 (_ BitVec 64)) (t!28499 List!20128)) )
))
(declare-fun arrayNoDuplicates!0 (array!59951 (_ BitVec 32) List!20128) Bool)

(assert (=> b!968816 (= lt!431518 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20125))))

(declare-fun mapNonEmpty!34933 () Bool)

(declare-fun mapRes!34933 () Bool)

(declare-fun tp!66502 () Bool)

(declare-fun e!546132 () Bool)

(assert (=> mapNonEmpty!34933 (= mapRes!34933 (and tp!66502 e!546132))))

(declare-fun mapValue!34933 () ValueCell!10493)

(declare-fun mapRest!34933 () (Array (_ BitVec 32) ValueCell!10493))

(declare-fun mapKey!34933 () (_ BitVec 32))

(assert (=> mapNonEmpty!34933 (= (arr!28834 _values!1425) (store mapRest!34933 mapKey!34933 mapValue!34933))))

(declare-fun b!968817 () Bool)

(declare-fun res!648618 () Bool)

(assert (=> b!968817 (=> (not res!648618) (not e!546129))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968817 (= res!648618 (and (= (size!29314 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29315 _keys!1717) (size!29314 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968818 () Bool)

(declare-fun res!648619 () Bool)

(assert (=> b!968818 (=> (not res!648619) (not e!546129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59951 (_ BitVec 32)) Bool)

(assert (=> b!968818 (= res!648619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968819 () Bool)

(declare-fun tp_is_empty!21949 () Bool)

(assert (=> b!968819 (= e!546132 tp_is_empty!21949)))

(declare-fun b!968820 () Bool)

(declare-fun e!546128 () Bool)

(assert (=> b!968820 (= e!546128 tp_is_empty!21949)))

(declare-fun mapIsEmpty!34933 () Bool)

(assert (=> mapIsEmpty!34933 mapRes!34933))

(declare-fun b!968821 () Bool)

(assert (=> b!968821 (= e!546130 (and e!546128 mapRes!34933))))

(declare-fun condMapEmpty!34933 () Bool)

(declare-fun mapDefault!34933 () ValueCell!10493)

