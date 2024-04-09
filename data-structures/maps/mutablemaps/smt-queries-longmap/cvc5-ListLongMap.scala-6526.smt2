; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83046 () Bool)

(assert start!83046)

(declare-fun b!968560 () Bool)

(declare-fun res!648470 () Bool)

(declare-fun e!545936 () Bool)

(assert (=> b!968560 (=> (not res!648470) (not e!545936))))

(declare-datatypes ((array!59911 0))(
  ( (array!59912 (arr!28817 (Array (_ BitVec 32) (_ BitVec 64))) (size!29297 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59911)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59911 (_ BitVec 32)) Bool)

(assert (=> b!968560 (= res!648470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968561 () Bool)

(declare-fun e!545934 () Bool)

(declare-fun tp_is_empty!21931 () Bool)

(assert (=> b!968561 (= e!545934 tp_is_empty!21931)))

(declare-fun b!968562 () Bool)

(declare-datatypes ((List!20120 0))(
  ( (Nil!20117) (Cons!20116 (h!21278 (_ BitVec 64)) (t!28491 List!20120)) )
))
(declare-fun noDuplicate!1376 (List!20120) Bool)

(assert (=> b!968562 (= e!545936 (not (noDuplicate!1376 Nil!20117)))))

(declare-fun b!968563 () Bool)

(declare-fun e!545935 () Bool)

(assert (=> b!968563 (= e!545935 tp_is_empty!21931)))

(declare-fun b!968564 () Bool)

(declare-fun res!648472 () Bool)

(assert (=> b!968564 (=> (not res!648472) (not e!545936))))

(declare-datatypes ((V!34225 0))(
  ( (V!34226 (val!11016 Int)) )
))
(declare-datatypes ((ValueCell!10484 0))(
  ( (ValueCellFull!10484 (v!13574 V!34225)) (EmptyCell!10484) )
))
(declare-datatypes ((array!59913 0))(
  ( (array!59914 (arr!28818 (Array (_ BitVec 32) ValueCell!10484)) (size!29298 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59913)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968564 (= res!648472 (and (= (size!29298 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29297 _keys!1717) (size!29298 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648471 () Bool)

(assert (=> start!83046 (=> (not res!648471) (not e!545936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83046 (= res!648471 (validMask!0 mask!2147))))

(assert (=> start!83046 e!545936))

(assert (=> start!83046 true))

(declare-fun e!545937 () Bool)

(declare-fun array_inv!22201 (array!59913) Bool)

(assert (=> start!83046 (and (array_inv!22201 _values!1425) e!545937)))

(declare-fun array_inv!22202 (array!59911) Bool)

(assert (=> start!83046 (array_inv!22202 _keys!1717)))

(declare-fun mapIsEmpty!34900 () Bool)

(declare-fun mapRes!34900 () Bool)

(assert (=> mapIsEmpty!34900 mapRes!34900))

(declare-fun b!968565 () Bool)

(assert (=> b!968565 (= e!545937 (and e!545934 mapRes!34900))))

(declare-fun condMapEmpty!34900 () Bool)

(declare-fun mapDefault!34900 () ValueCell!10484)

