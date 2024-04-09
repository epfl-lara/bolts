; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83066 () Bool)

(assert start!83066)

(declare-fun b!968707 () Bool)

(declare-fun e!546039 () Bool)

(declare-datatypes ((List!20125 0))(
  ( (Nil!20122) (Cons!20121 (h!21283 (_ BitVec 64)) (t!28496 List!20125)) )
))
(declare-fun contains!5550 (List!20125 (_ BitVec 64)) Bool)

(assert (=> b!968707 (= e!546039 (contains!5550 Nil!20122 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!34918 () Bool)

(declare-fun mapRes!34918 () Bool)

(assert (=> mapIsEmpty!34918 mapRes!34918))

(declare-fun b!968708 () Bool)

(declare-fun res!648562 () Bool)

(declare-fun e!546038 () Bool)

(assert (=> b!968708 (=> (not res!648562) (not e!546038))))

(declare-datatypes ((array!59933 0))(
  ( (array!59934 (arr!28827 (Array (_ BitVec 32) (_ BitVec 64))) (size!29307 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59933)

(assert (=> b!968708 (= res!648562 (and (bvsle #b00000000000000000000000000000000 (size!29307 _keys!1717)) (bvslt (size!29307 _keys!1717) #b01111111111111111111111111111111)))))

(declare-fun b!968709 () Bool)

(declare-fun res!648563 () Bool)

(assert (=> b!968709 (=> (not res!648563) (not e!546038))))

(declare-fun noDuplicate!1380 (List!20125) Bool)

(assert (=> b!968709 (= res!648563 (noDuplicate!1380 Nil!20122))))

(declare-fun b!968710 () Bool)

(assert (=> b!968710 (= e!546038 e!546039)))

(declare-fun res!648559 () Bool)

(assert (=> b!968710 (=> res!648559 e!546039)))

(assert (=> b!968710 (= res!648559 (contains!5550 Nil!20122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!648561 () Bool)

(assert (=> start!83066 (=> (not res!648561) (not e!546038))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83066 (= res!648561 (validMask!0 mask!2147))))

(assert (=> start!83066 e!546038))

(assert (=> start!83066 true))

(declare-datatypes ((V!34237 0))(
  ( (V!34238 (val!11021 Int)) )
))
(declare-datatypes ((ValueCell!10489 0))(
  ( (ValueCellFull!10489 (v!13579 V!34237)) (EmptyCell!10489) )
))
(declare-datatypes ((array!59935 0))(
  ( (array!59936 (arr!28828 (Array (_ BitVec 32) ValueCell!10489)) (size!29308 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59935)

(declare-fun e!546042 () Bool)

(declare-fun array_inv!22211 (array!59935) Bool)

(assert (=> start!83066 (and (array_inv!22211 _values!1425) e!546042)))

(declare-fun array_inv!22212 (array!59933) Bool)

(assert (=> start!83066 (array_inv!22212 _keys!1717)))

(declare-fun b!968711 () Bool)

(declare-fun res!648558 () Bool)

(assert (=> b!968711 (=> (not res!648558) (not e!546038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59933 (_ BitVec 32)) Bool)

(assert (=> b!968711 (= res!648558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!34918 () Bool)

(declare-fun tp!66487 () Bool)

(declare-fun e!546041 () Bool)

(assert (=> mapNonEmpty!34918 (= mapRes!34918 (and tp!66487 e!546041))))

(declare-fun mapKey!34918 () (_ BitVec 32))

(declare-fun mapValue!34918 () ValueCell!10489)

(declare-fun mapRest!34918 () (Array (_ BitVec 32) ValueCell!10489))

(assert (=> mapNonEmpty!34918 (= (arr!28828 _values!1425) (store mapRest!34918 mapKey!34918 mapValue!34918))))

(declare-fun b!968712 () Bool)

(declare-fun e!546040 () Bool)

(declare-fun tp_is_empty!21941 () Bool)

(assert (=> b!968712 (= e!546040 tp_is_empty!21941)))

(declare-fun b!968713 () Bool)

(assert (=> b!968713 (= e!546042 (and e!546040 mapRes!34918))))

(declare-fun condMapEmpty!34918 () Bool)

(declare-fun mapDefault!34918 () ValueCell!10489)

