; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83140 () Bool)

(assert start!83140)

(declare-fun b_free!19105 () Bool)

(declare-fun b_next!19105 () Bool)

(assert (=> start!83140 (= b_free!19105 (not b_next!19105))))

(declare-fun tp!66594 () Bool)

(declare-fun b_and!30611 () Bool)

(assert (=> start!83140 (= tp!66594 b_and!30611)))

(declare-fun b!969362 () Bool)

(declare-fun res!648924 () Bool)

(declare-fun e!546536 () Bool)

(assert (=> b!969362 (=> (not res!648924) (not e!546536))))

(declare-datatypes ((array!60053 0))(
  ( (array!60054 (arr!28886 (Array (_ BitVec 32) (_ BitVec 64))) (size!29366 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60053)

(declare-datatypes ((List!20149 0))(
  ( (Nil!20146) (Cons!20145 (h!21307 (_ BitVec 64)) (t!28520 List!20149)) )
))
(declare-fun arrayNoDuplicates!0 (array!60053 (_ BitVec 32) List!20149) Bool)

(assert (=> b!969362 (= res!648924 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20146))))

(declare-fun b!969363 () Bool)

(declare-fun res!648923 () Bool)

(assert (=> b!969363 (=> (not res!648923) (not e!546536))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34321 0))(
  ( (V!34322 (val!11052 Int)) )
))
(declare-datatypes ((ValueCell!10520 0))(
  ( (ValueCellFull!10520 (v!13611 V!34321)) (EmptyCell!10520) )
))
(declare-datatypes ((array!60055 0))(
  ( (array!60056 (arr!28887 (Array (_ BitVec 32) ValueCell!10520)) (size!29367 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60055)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969363 (= res!648923 (and (= (size!29367 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29366 _keys!1717) (size!29367 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648925 () Bool)

(assert (=> start!83140 (=> (not res!648925) (not e!546536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83140 (= res!648925 (validMask!0 mask!2147))))

(assert (=> start!83140 e!546536))

(assert (=> start!83140 true))

(declare-fun e!546537 () Bool)

(declare-fun array_inv!22255 (array!60055) Bool)

(assert (=> start!83140 (and (array_inv!22255 _values!1425) e!546537)))

(declare-fun tp_is_empty!22003 () Bool)

(assert (=> start!83140 tp_is_empty!22003))

(assert (=> start!83140 tp!66594))

(declare-fun array_inv!22256 (array!60053) Bool)

(assert (=> start!83140 (array_inv!22256 _keys!1717)))

(declare-fun b!969364 () Bool)

(declare-fun e!546535 () Bool)

(declare-fun mapRes!35014 () Bool)

(assert (=> b!969364 (= e!546537 (and e!546535 mapRes!35014))))

(declare-fun condMapEmpty!35014 () Bool)

(declare-fun mapDefault!35014 () ValueCell!10520)

