; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83050 () Bool)

(assert start!83050)

(declare-fun res!648494 () Bool)

(declare-fun e!545968 () Bool)

(assert (=> start!83050 (=> (not res!648494) (not e!545968))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83050 (= res!648494 (validMask!0 mask!2147))))

(assert (=> start!83050 e!545968))

(assert (=> start!83050 true))

(declare-datatypes ((V!34229 0))(
  ( (V!34230 (val!11018 Int)) )
))
(declare-datatypes ((ValueCell!10486 0))(
  ( (ValueCellFull!10486 (v!13576 V!34229)) (EmptyCell!10486) )
))
(declare-datatypes ((array!59919 0))(
  ( (array!59920 (arr!28821 (Array (_ BitVec 32) ValueCell!10486)) (size!29301 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59919)

(declare-fun e!545964 () Bool)

(declare-fun array_inv!22205 (array!59919) Bool)

(assert (=> start!83050 (and (array_inv!22205 _values!1425) e!545964)))

(declare-datatypes ((array!59921 0))(
  ( (array!59922 (arr!28822 (Array (_ BitVec 32) (_ BitVec 64))) (size!29302 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59921)

(declare-fun array_inv!22206 (array!59921) Bool)

(assert (=> start!83050 (array_inv!22206 _keys!1717)))

(declare-fun b!968602 () Bool)

(declare-fun res!648495 () Bool)

(assert (=> b!968602 (=> (not res!648495) (not e!545968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59921 (_ BitVec 32)) Bool)

(assert (=> b!968602 (= res!648495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968603 () Bool)

(declare-fun e!545965 () Bool)

(declare-fun tp_is_empty!21935 () Bool)

(assert (=> b!968603 (= e!545965 tp_is_empty!21935)))

(declare-fun b!968604 () Bool)

(declare-fun e!545966 () Bool)

(assert (=> b!968604 (= e!545966 tp_is_empty!21935)))

(declare-fun mapNonEmpty!34906 () Bool)

(declare-fun mapRes!34906 () Bool)

(declare-fun tp!66475 () Bool)

(assert (=> mapNonEmpty!34906 (= mapRes!34906 (and tp!66475 e!545965))))

(declare-fun mapRest!34906 () (Array (_ BitVec 32) ValueCell!10486))

(declare-fun mapValue!34906 () ValueCell!10486)

(declare-fun mapKey!34906 () (_ BitVec 32))

(assert (=> mapNonEmpty!34906 (= (arr!28821 _values!1425) (store mapRest!34906 mapKey!34906 mapValue!34906))))

(declare-fun b!968605 () Bool)

(declare-fun res!648497 () Bool)

(assert (=> b!968605 (=> (not res!648497) (not e!545968))))

(assert (=> b!968605 (= res!648497 (and (bvsle #b00000000000000000000000000000000 (size!29302 _keys!1717)) (bvslt (size!29302 _keys!1717) #b01111111111111111111111111111111)))))

(declare-fun b!968606 () Bool)

(declare-datatypes ((List!20122 0))(
  ( (Nil!20119) (Cons!20118 (h!21280 (_ BitVec 64)) (t!28493 List!20122)) )
))
(declare-fun noDuplicate!1378 (List!20122) Bool)

(assert (=> b!968606 (= e!545968 (not (noDuplicate!1378 Nil!20119)))))

(declare-fun b!968607 () Bool)

(assert (=> b!968607 (= e!545964 (and e!545966 mapRes!34906))))

(declare-fun condMapEmpty!34906 () Bool)

(declare-fun mapDefault!34906 () ValueCell!10486)

