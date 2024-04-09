; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83200 () Bool)

(assert start!83200)

(declare-fun b_free!19165 () Bool)

(declare-fun b_next!19165 () Bool)

(assert (=> start!83200 (= b_free!19165 (not b_next!19165))))

(declare-fun tp!66775 () Bool)

(declare-fun b_and!30671 () Bool)

(assert (=> start!83200 (= tp!66775 b_and!30671)))

(declare-fun b!970181 () Bool)

(declare-fun res!649474 () Bool)

(declare-fun e!546984 () Bool)

(assert (=> b!970181 (=> (not res!649474) (not e!546984))))

(declare-datatypes ((array!60167 0))(
  ( (array!60168 (arr!28943 (Array (_ BitVec 32) (_ BitVec 64))) (size!29423 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60167)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970181 (= res!649474 (validKeyInArray!0 (select (arr!28943 _keys!1717) i!822)))))

(declare-fun b!970182 () Bool)

(declare-fun res!649473 () Bool)

(assert (=> b!970182 (=> (not res!649473) (not e!546984))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34401 0))(
  ( (V!34402 (val!11082 Int)) )
))
(declare-datatypes ((ValueCell!10550 0))(
  ( (ValueCellFull!10550 (v!13641 V!34401)) (EmptyCell!10550) )
))
(declare-datatypes ((array!60169 0))(
  ( (array!60170 (arr!28944 (Array (_ BitVec 32) ValueCell!10550)) (size!29424 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60169)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970182 (= res!649473 (and (= (size!29424 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29423 _keys!1717) (size!29424 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35104 () Bool)

(declare-fun mapRes!35104 () Bool)

(assert (=> mapIsEmpty!35104 mapRes!35104))

(declare-fun b!970183 () Bool)

(assert (=> b!970183 (= e!546984 false)))

(declare-fun lt!431671 () Bool)

(declare-fun zeroValue!1367 () V!34401)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34401)

(declare-datatypes ((tuple2!14296 0))(
  ( (tuple2!14297 (_1!7158 (_ BitVec 64)) (_2!7158 V!34401)) )
))
(declare-datatypes ((List!20188 0))(
  ( (Nil!20185) (Cons!20184 (h!21346 tuple2!14296) (t!28559 List!20188)) )
))
(declare-datatypes ((ListLongMap!13007 0))(
  ( (ListLongMap!13008 (toList!6519 List!20188)) )
))
(declare-fun contains!5574 (ListLongMap!13007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3704 (array!60167 array!60169 (_ BitVec 32) (_ BitVec 32) V!34401 V!34401 (_ BitVec 32) Int) ListLongMap!13007)

(assert (=> b!970183 (= lt!431671 (contains!5574 (getCurrentListMap!3704 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28943 _keys!1717) i!822)))))

(declare-fun b!970184 () Bool)

(declare-fun e!546986 () Bool)

(declare-fun tp_is_empty!22063 () Bool)

(assert (=> b!970184 (= e!546986 tp_is_empty!22063)))

(declare-fun b!970185 () Bool)

(declare-fun e!546983 () Bool)

(assert (=> b!970185 (= e!546983 tp_is_empty!22063)))

(declare-fun b!970186 () Bool)

(declare-fun res!649469 () Bool)

(assert (=> b!970186 (=> (not res!649469) (not e!546984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60167 (_ BitVec 32)) Bool)

(assert (=> b!970186 (= res!649469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!649470 () Bool)

(assert (=> start!83200 (=> (not res!649470) (not e!546984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83200 (= res!649470 (validMask!0 mask!2147))))

(assert (=> start!83200 e!546984))

(assert (=> start!83200 true))

(declare-fun e!546987 () Bool)

(declare-fun array_inv!22291 (array!60169) Bool)

(assert (=> start!83200 (and (array_inv!22291 _values!1425) e!546987)))

(assert (=> start!83200 tp_is_empty!22063))

(assert (=> start!83200 tp!66775))

(declare-fun array_inv!22292 (array!60167) Bool)

(assert (=> start!83200 (array_inv!22292 _keys!1717)))

(declare-fun b!970187 () Bool)

(assert (=> b!970187 (= e!546987 (and e!546983 mapRes!35104))))

(declare-fun condMapEmpty!35104 () Bool)

(declare-fun mapDefault!35104 () ValueCell!10550)

