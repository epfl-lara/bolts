; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83120 () Bool)

(assert start!83120)

(declare-fun b!969122 () Bool)

(declare-fun res!648771 () Bool)

(declare-fun e!546384 () Bool)

(assert (=> b!969122 (=> (not res!648771) (not e!546384))))

(declare-datatypes ((array!60013 0))(
  ( (array!60014 (arr!28866 (Array (_ BitVec 32) (_ BitVec 64))) (size!29346 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60013)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60013 (_ BitVec 32)) Bool)

(assert (=> b!969122 (= res!648771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!34984 () Bool)

(declare-fun mapRes!34984 () Bool)

(assert (=> mapIsEmpty!34984 mapRes!34984))

(declare-fun b!969123 () Bool)

(declare-fun res!648772 () Bool)

(assert (=> b!969123 (=> (not res!648772) (not e!546384))))

(declare-datatypes ((V!34293 0))(
  ( (V!34294 (val!11042 Int)) )
))
(declare-datatypes ((ValueCell!10510 0))(
  ( (ValueCellFull!10510 (v!13601 V!34293)) (EmptyCell!10510) )
))
(declare-datatypes ((array!60015 0))(
  ( (array!60016 (arr!28867 (Array (_ BitVec 32) ValueCell!10510)) (size!29347 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60015)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969123 (= res!648772 (and (= (size!29347 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29346 _keys!1717) (size!29347 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34984 () Bool)

(declare-fun tp!66553 () Bool)

(declare-fun e!546387 () Bool)

(assert (=> mapNonEmpty!34984 (= mapRes!34984 (and tp!66553 e!546387))))

(declare-fun mapRest!34984 () (Array (_ BitVec 32) ValueCell!10510))

(declare-fun mapValue!34984 () ValueCell!10510)

(declare-fun mapKey!34984 () (_ BitVec 32))

(assert (=> mapNonEmpty!34984 (= (arr!28867 _values!1425) (store mapRest!34984 mapKey!34984 mapValue!34984))))

(declare-fun b!969124 () Bool)

(declare-fun e!546383 () Bool)

(declare-fun tp_is_empty!21983 () Bool)

(assert (=> b!969124 (= e!546383 tp_is_empty!21983)))

(declare-fun b!969125 () Bool)

(declare-fun e!546386 () Bool)

(assert (=> b!969125 (= e!546386 (and e!546383 mapRes!34984))))

(declare-fun condMapEmpty!34984 () Bool)

(declare-fun mapDefault!34984 () ValueCell!10510)

