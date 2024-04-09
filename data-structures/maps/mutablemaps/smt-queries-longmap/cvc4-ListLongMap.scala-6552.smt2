; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83228 () Bool)

(assert start!83228)

(declare-fun b_free!19193 () Bool)

(declare-fun b_next!19193 () Bool)

(assert (=> start!83228 (= b_free!19193 (not b_next!19193))))

(declare-fun tp!66858 () Bool)

(declare-fun b_and!30699 () Bool)

(assert (=> start!83228 (= tp!66858 b_and!30699)))

(declare-fun mapNonEmpty!35146 () Bool)

(declare-fun mapRes!35146 () Bool)

(declare-fun tp!66859 () Bool)

(declare-fun e!547197 () Bool)

(assert (=> mapNonEmpty!35146 (= mapRes!35146 (and tp!66859 e!547197))))

(declare-datatypes ((V!34437 0))(
  ( (V!34438 (val!11096 Int)) )
))
(declare-datatypes ((ValueCell!10564 0))(
  ( (ValueCellFull!10564 (v!13655 V!34437)) (EmptyCell!10564) )
))
(declare-datatypes ((array!60219 0))(
  ( (array!60220 (arr!28969 (Array (_ BitVec 32) ValueCell!10564)) (size!29449 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60219)

(declare-fun mapValue!35146 () ValueCell!10564)

(declare-fun mapKey!35146 () (_ BitVec 32))

(declare-fun mapRest!35146 () (Array (_ BitVec 32) ValueCell!10564))

(assert (=> mapNonEmpty!35146 (= (arr!28969 _values!1425) (store mapRest!35146 mapKey!35146 mapValue!35146))))

(declare-fun b!970559 () Bool)

(declare-fun res!649721 () Bool)

(declare-fun e!547196 () Bool)

(assert (=> b!970559 (=> (not res!649721) (not e!547196))))

(declare-datatypes ((array!60221 0))(
  ( (array!60222 (arr!28970 (Array (_ BitVec 32) (_ BitVec 64))) (size!29450 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60221)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970559 (= res!649721 (validKeyInArray!0 (select (arr!28970 _keys!1717) i!822)))))

(declare-fun b!970560 () Bool)

(declare-fun res!649726 () Bool)

(assert (=> b!970560 (=> (not res!649726) (not e!547196))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60221 (_ BitVec 32)) Bool)

(assert (=> b!970560 (= res!649726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970561 () Bool)

(declare-fun res!649725 () Bool)

(assert (=> b!970561 (=> (not res!649725) (not e!547196))))

(declare-datatypes ((List!20210 0))(
  ( (Nil!20207) (Cons!20206 (h!21368 (_ BitVec 64)) (t!28581 List!20210)) )
))
(declare-fun arrayNoDuplicates!0 (array!60221 (_ BitVec 32) List!20210) Bool)

(assert (=> b!970561 (= res!649725 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20207))))

(declare-fun b!970562 () Bool)

(declare-fun res!649724 () Bool)

(assert (=> b!970562 (=> (not res!649724) (not e!547196))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!970562 (= res!649724 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29450 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29450 _keys!1717))))))

(declare-fun mapIsEmpty!35146 () Bool)

(assert (=> mapIsEmpty!35146 mapRes!35146))

(declare-fun res!649722 () Bool)

(assert (=> start!83228 (=> (not res!649722) (not e!547196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83228 (= res!649722 (validMask!0 mask!2147))))

(assert (=> start!83228 e!547196))

(assert (=> start!83228 true))

(declare-fun e!547193 () Bool)

(declare-fun array_inv!22313 (array!60219) Bool)

(assert (=> start!83228 (and (array_inv!22313 _values!1425) e!547193)))

(declare-fun tp_is_empty!22091 () Bool)

(assert (=> start!83228 tp_is_empty!22091))

(assert (=> start!83228 tp!66858))

(declare-fun array_inv!22314 (array!60221) Bool)

(assert (=> start!83228 (array_inv!22314 _keys!1717)))

(declare-fun b!970563 () Bool)

(declare-fun e!547195 () Bool)

(assert (=> b!970563 (= e!547193 (and e!547195 mapRes!35146))))

(declare-fun condMapEmpty!35146 () Bool)

(declare-fun mapDefault!35146 () ValueCell!10564)

