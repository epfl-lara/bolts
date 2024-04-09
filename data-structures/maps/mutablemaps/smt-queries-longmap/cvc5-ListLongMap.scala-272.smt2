; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4456 () Bool)

(assert start!4456)

(declare-fun b_free!1219 () Bool)

(declare-fun b_next!1219 () Bool)

(assert (=> start!4456 (= b_free!1219 (not b_next!1219))))

(declare-fun tp!5095 () Bool)

(declare-fun b_and!2043 () Bool)

(assert (=> start!4456 (= tp!5095 b_and!2043)))

(declare-fun b!34530 () Bool)

(declare-fun res!20934 () Bool)

(declare-fun e!21895 () Bool)

(assert (=> b!34530 (=> (not res!20934) (not e!21895))))

(declare-datatypes ((array!2351 0))(
  ( (array!2352 (arr!1123 (Array (_ BitVec 32) (_ BitVec 64))) (size!1224 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2351)

(declare-datatypes ((List!912 0))(
  ( (Nil!909) (Cons!908 (h!1475 (_ BitVec 64)) (t!3619 List!912)) )
))
(declare-fun arrayNoDuplicates!0 (array!2351 (_ BitVec 32) List!912) Bool)

(assert (=> b!34530 (= res!20934 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!909))))

(declare-fun b!34531 () Bool)

(declare-fun res!20935 () Bool)

(assert (=> b!34531 (=> (not res!20935) (not e!21895))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34531 (= res!20935 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34532 () Bool)

(declare-fun res!20936 () Bool)

(assert (=> b!34532 (=> (not res!20936) (not e!21895))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2351 (_ BitVec 32)) Bool)

(assert (=> b!34532 (= res!20936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!20938 () Bool)

(assert (=> start!4456 (=> (not res!20938) (not e!21895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4456 (= res!20938 (validMask!0 mask!2294))))

(assert (=> start!4456 e!21895))

(assert (=> start!4456 true))

(assert (=> start!4456 tp!5095))

(declare-datatypes ((V!1923 0))(
  ( (V!1924 (val!813 Int)) )
))
(declare-datatypes ((ValueCell!587 0))(
  ( (ValueCellFull!587 (v!1908 V!1923)) (EmptyCell!587) )
))
(declare-datatypes ((array!2353 0))(
  ( (array!2354 (arr!1124 (Array (_ BitVec 32) ValueCell!587)) (size!1225 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2353)

(declare-fun e!21897 () Bool)

(declare-fun array_inv!747 (array!2353) Bool)

(assert (=> start!4456 (and (array_inv!747 _values!1501) e!21897)))

(declare-fun array_inv!748 (array!2351) Bool)

(assert (=> start!4456 (array_inv!748 _keys!1833)))

(declare-fun tp_is_empty!1573 () Bool)

(assert (=> start!4456 tp_is_empty!1573))

(declare-fun b!34533 () Bool)

(declare-fun e!21893 () Bool)

(declare-fun mapRes!1906 () Bool)

(assert (=> b!34533 (= e!21897 (and e!21893 mapRes!1906))))

(declare-fun condMapEmpty!1906 () Bool)

(declare-fun mapDefault!1906 () ValueCell!587)

