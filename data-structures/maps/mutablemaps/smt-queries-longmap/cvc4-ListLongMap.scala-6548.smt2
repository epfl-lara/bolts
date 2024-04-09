; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83204 () Bool)

(assert start!83204)

(declare-fun b_free!19169 () Bool)

(declare-fun b_next!19169 () Bool)

(assert (=> start!83204 (= b_free!19169 (not b_next!19169))))

(declare-fun tp!66787 () Bool)

(declare-fun b_and!30675 () Bool)

(assert (=> start!83204 (= tp!66787 b_and!30675)))

(declare-fun b!970235 () Bool)

(declare-fun res!649506 () Bool)

(declare-fun e!547014 () Bool)

(assert (=> b!970235 (=> (not res!649506) (not e!547014))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34405 0))(
  ( (V!34406 (val!11084 Int)) )
))
(declare-datatypes ((ValueCell!10552 0))(
  ( (ValueCellFull!10552 (v!13643 V!34405)) (EmptyCell!10552) )
))
(declare-datatypes ((array!60175 0))(
  ( (array!60176 (arr!28947 (Array (_ BitVec 32) ValueCell!10552)) (size!29427 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60175)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60177 0))(
  ( (array!60178 (arr!28948 (Array (_ BitVec 32) (_ BitVec 64))) (size!29428 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60177)

(assert (=> b!970235 (= res!649506 (and (= (size!29427 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29428 _keys!1717) (size!29427 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970236 () Bool)

(assert (=> b!970236 (= e!547014 false)))

(declare-fun zeroValue!1367 () V!34405)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34405)

(declare-fun lt!431677 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14300 0))(
  ( (tuple2!14301 (_1!7160 (_ BitVec 64)) (_2!7160 V!34405)) )
))
(declare-datatypes ((List!20191 0))(
  ( (Nil!20188) (Cons!20187 (h!21349 tuple2!14300) (t!28562 List!20191)) )
))
(declare-datatypes ((ListLongMap!13011 0))(
  ( (ListLongMap!13012 (toList!6521 List!20191)) )
))
(declare-fun contains!5576 (ListLongMap!13011 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3706 (array!60177 array!60175 (_ BitVec 32) (_ BitVec 32) V!34405 V!34405 (_ BitVec 32) Int) ListLongMap!13011)

(assert (=> b!970236 (= lt!431677 (contains!5576 (getCurrentListMap!3706 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28948 _keys!1717) i!822)))))

(declare-fun b!970237 () Bool)

(declare-fun res!649508 () Bool)

(assert (=> b!970237 (=> (not res!649508) (not e!547014))))

(declare-datatypes ((List!20192 0))(
  ( (Nil!20189) (Cons!20188 (h!21350 (_ BitVec 64)) (t!28563 List!20192)) )
))
(declare-fun arrayNoDuplicates!0 (array!60177 (_ BitVec 32) List!20192) Bool)

(assert (=> b!970237 (= res!649508 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20189))))

(declare-fun b!970238 () Bool)

(declare-fun e!547013 () Bool)

(declare-fun tp_is_empty!22067 () Bool)

(assert (=> b!970238 (= e!547013 tp_is_empty!22067)))

(declare-fun mapIsEmpty!35110 () Bool)

(declare-fun mapRes!35110 () Bool)

(assert (=> mapIsEmpty!35110 mapRes!35110))

(declare-fun b!970239 () Bool)

(declare-fun res!649509 () Bool)

(assert (=> b!970239 (=> (not res!649509) (not e!547014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970239 (= res!649509 (validKeyInArray!0 (select (arr!28948 _keys!1717) i!822)))))

(declare-fun b!970240 () Bool)

(declare-fun res!649505 () Bool)

(assert (=> b!970240 (=> (not res!649505) (not e!547014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60177 (_ BitVec 32)) Bool)

(assert (=> b!970240 (= res!649505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970241 () Bool)

(declare-fun e!547017 () Bool)

(assert (=> b!970241 (= e!547017 tp_is_empty!22067)))

(declare-fun b!970242 () Bool)

(declare-fun e!547015 () Bool)

(assert (=> b!970242 (= e!547015 (and e!547013 mapRes!35110))))

(declare-fun condMapEmpty!35110 () Bool)

(declare-fun mapDefault!35110 () ValueCell!10552)

