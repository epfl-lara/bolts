; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83018 () Bool)

(assert start!83018)

(declare-fun b!968410 () Bool)

(declare-fun res!648404 () Bool)

(declare-fun e!545816 () Bool)

(assert (=> b!968410 (=> (not res!648404) (not e!545816))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34209 0))(
  ( (V!34210 (val!11010 Int)) )
))
(declare-datatypes ((ValueCell!10478 0))(
  ( (ValueCellFull!10478 (v!13568 V!34209)) (EmptyCell!10478) )
))
(declare-datatypes ((array!59889 0))(
  ( (array!59890 (arr!28808 (Array (_ BitVec 32) ValueCell!10478)) (size!29288 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59889)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59891 0))(
  ( (array!59892 (arr!28809 (Array (_ BitVec 32) (_ BitVec 64))) (size!29289 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59891)

(assert (=> b!968410 (= res!648404 (and (= (size!29288 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29289 _keys!1717) (size!29288 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968411 () Bool)

(declare-fun e!545814 () Bool)

(declare-fun tp_is_empty!21919 () Bool)

(assert (=> b!968411 (= e!545814 tp_is_empty!21919)))

(declare-fun mapIsEmpty!34876 () Bool)

(declare-fun mapRes!34876 () Bool)

(assert (=> mapIsEmpty!34876 mapRes!34876))

(declare-fun b!968412 () Bool)

(declare-fun res!648403 () Bool)

(assert (=> b!968412 (=> (not res!648403) (not e!545816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59891 (_ BitVec 32)) Bool)

(assert (=> b!968412 (= res!648403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968414 () Bool)

(declare-fun e!545817 () Bool)

(declare-fun e!545818 () Bool)

(assert (=> b!968414 (= e!545817 (and e!545818 mapRes!34876))))

(declare-fun condMapEmpty!34876 () Bool)

(declare-fun mapDefault!34876 () ValueCell!10478)

