; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82988 () Bool)

(assert start!82988)

(declare-fun b_free!19087 () Bool)

(declare-fun b_next!19087 () Bool)

(assert (=> start!82988 (= b_free!19087 (not b_next!19087))))

(declare-fun tp!66390 () Bool)

(declare-fun b_and!30593 () Bool)

(assert (=> start!82988 (= tp!66390 b_and!30593)))

(declare-fun b!968142 () Bool)

(declare-fun res!648254 () Bool)

(declare-fun e!545632 () Bool)

(assert (=> b!968142 (=> (not res!648254) (not e!545632))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34177 0))(
  ( (V!34178 (val!10998 Int)) )
))
(declare-datatypes ((ValueCell!10466 0))(
  ( (ValueCellFull!10466 (v!13556 V!34177)) (EmptyCell!10466) )
))
(declare-datatypes ((array!59841 0))(
  ( (array!59842 (arr!28785 (Array (_ BitVec 32) ValueCell!10466)) (size!29265 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59841)

(declare-datatypes ((array!59843 0))(
  ( (array!59844 (arr!28786 (Array (_ BitVec 32) (_ BitVec 64))) (size!29266 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59843)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!968142 (= res!648254 (and (= (size!29265 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29266 _keys!1686) (size!29265 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34837 () Bool)

(declare-fun mapRes!34837 () Bool)

(assert (=> mapIsEmpty!34837 mapRes!34837))

(declare-fun mapNonEmpty!34837 () Bool)

(declare-fun tp!66391 () Bool)

(declare-fun e!545629 () Bool)

(assert (=> mapNonEmpty!34837 (= mapRes!34837 (and tp!66391 e!545629))))

(declare-fun mapValue!34837 () ValueCell!10466)

(declare-fun mapKey!34837 () (_ BitVec 32))

(declare-fun mapRest!34837 () (Array (_ BitVec 32) ValueCell!10466))

(assert (=> mapNonEmpty!34837 (= (arr!28785 _values!1400) (store mapRest!34837 mapKey!34837 mapValue!34837))))

(declare-fun b!968143 () Bool)

(declare-fun res!648250 () Bool)

(assert (=> b!968143 (=> (not res!648250) (not e!545632))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968143 (= res!648250 (validKeyInArray!0 (select (arr!28786 _keys!1686) i!803)))))

(declare-fun b!968144 () Bool)

(declare-fun e!545628 () Bool)

(declare-fun e!545630 () Bool)

(assert (=> b!968144 (= e!545628 (and e!545630 mapRes!34837))))

(declare-fun condMapEmpty!34837 () Bool)

(declare-fun mapDefault!34837 () ValueCell!10466)

