; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83288 () Bool)

(assert start!83288)

(declare-fun b_free!19253 () Bool)

(declare-fun b_next!19253 () Bool)

(assert (=> start!83288 (= b_free!19253 (not b_next!19253))))

(declare-fun tp!67039 () Bool)

(declare-fun b_and!30759 () Bool)

(assert (=> start!83288 (= tp!67039 b_and!30759)))

(declare-fun b!971449 () Bool)

(declare-fun res!650346 () Bool)

(declare-fun e!547646 () Bool)

(assert (=> b!971449 (=> (not res!650346) (not e!547646))))

(declare-datatypes ((array!60335 0))(
  ( (array!60336 (arr!29027 (Array (_ BitVec 32) (_ BitVec 64))) (size!29507 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60335)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971449 (= res!650346 (validKeyInArray!0 (select (arr!29027 _keys!1717) i!822)))))

(declare-fun b!971450 () Bool)

(declare-fun res!650345 () Bool)

(assert (=> b!971450 (=> (not res!650345) (not e!547646))))

(declare-datatypes ((List!20257 0))(
  ( (Nil!20254) (Cons!20253 (h!21415 (_ BitVec 64)) (t!28628 List!20257)) )
))
(declare-fun arrayNoDuplicates!0 (array!60335 (_ BitVec 32) List!20257) Bool)

(assert (=> b!971450 (= res!650345 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20254))))

(declare-fun mapIsEmpty!35236 () Bool)

(declare-fun mapRes!35236 () Bool)

(assert (=> mapIsEmpty!35236 mapRes!35236))

(declare-fun res!650342 () Bool)

(assert (=> start!83288 (=> (not res!650342) (not e!547646))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83288 (= res!650342 (validMask!0 mask!2147))))

(assert (=> start!83288 e!547646))

(assert (=> start!83288 true))

(declare-datatypes ((V!34517 0))(
  ( (V!34518 (val!11126 Int)) )
))
(declare-datatypes ((ValueCell!10594 0))(
  ( (ValueCellFull!10594 (v!13685 V!34517)) (EmptyCell!10594) )
))
(declare-datatypes ((array!60337 0))(
  ( (array!60338 (arr!29028 (Array (_ BitVec 32) ValueCell!10594)) (size!29508 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60337)

(declare-fun e!547644 () Bool)

(declare-fun array_inv!22355 (array!60337) Bool)

(assert (=> start!83288 (and (array_inv!22355 _values!1425) e!547644)))

(declare-fun tp_is_empty!22151 () Bool)

(assert (=> start!83288 tp_is_empty!22151))

(assert (=> start!83288 tp!67039))

(declare-fun array_inv!22356 (array!60335) Bool)

(assert (=> start!83288 (array_inv!22356 _keys!1717)))

(declare-fun b!971451 () Bool)

(declare-fun e!547645 () Bool)

(assert (=> b!971451 (= e!547645 tp_is_empty!22151)))

(declare-fun b!971452 () Bool)

(declare-fun e!547647 () Bool)

(assert (=> b!971452 (= e!547644 (and e!547647 mapRes!35236))))

(declare-fun condMapEmpty!35236 () Bool)

(declare-fun mapDefault!35236 () ValueCell!10594)

