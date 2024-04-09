; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82800 () Bool)

(assert start!82800)

(declare-fun b_free!18905 () Bool)

(declare-fun b_next!18905 () Bool)

(assert (=> start!82800 (= b_free!18905 (not b_next!18905))))

(declare-fun tp!65836 () Bool)

(declare-fun b_and!30411 () Bool)

(assert (=> start!82800 (= tp!65836 b_and!30411)))

(declare-fun b!965312 () Bool)

(declare-fun res!646270 () Bool)

(declare-fun e!544203 () Bool)

(assert (=> b!965312 (=> (not res!646270) (not e!544203))))

(declare-datatypes ((array!59479 0))(
  ( (array!59480 (arr!28604 (Array (_ BitVec 32) (_ BitVec 64))) (size!29084 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59479)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965312 (= res!646270 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29084 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29084 _keys!1686))))))

(declare-fun b!965313 () Bool)

(declare-fun res!646269 () Bool)

(assert (=> b!965313 (=> (not res!646269) (not e!544203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965313 (= res!646269 (validKeyInArray!0 (select (arr!28604 _keys!1686) i!803)))))

(declare-fun b!965314 () Bool)

(declare-fun res!646266 () Bool)

(assert (=> b!965314 (=> (not res!646266) (not e!544203))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33925 0))(
  ( (V!33926 (val!10904 Int)) )
))
(declare-datatypes ((ValueCell!10372 0))(
  ( (ValueCellFull!10372 (v!13462 V!33925)) (EmptyCell!10372) )
))
(declare-datatypes ((array!59481 0))(
  ( (array!59482 (arr!28605 (Array (_ BitVec 32) ValueCell!10372)) (size!29085 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59481)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965314 (= res!646266 (and (= (size!29085 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29084 _keys!1686) (size!29085 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965315 () Bool)

(declare-fun e!544204 () Bool)

(declare-fun tp_is_empty!21707 () Bool)

(assert (=> b!965315 (= e!544204 tp_is_empty!21707)))

(declare-fun b!965316 () Bool)

(declare-fun res!646267 () Bool)

(assert (=> b!965316 (=> (not res!646267) (not e!544203))))

(declare-datatypes ((List!19976 0))(
  ( (Nil!19973) (Cons!19972 (h!21134 (_ BitVec 64)) (t!28347 List!19976)) )
))
(declare-fun arrayNoDuplicates!0 (array!59479 (_ BitVec 32) List!19976) Bool)

(assert (=> b!965316 (= res!646267 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19973))))

(declare-fun mapNonEmpty!34555 () Bool)

(declare-fun mapRes!34555 () Bool)

(declare-fun tp!65835 () Bool)

(assert (=> mapNonEmpty!34555 (= mapRes!34555 (and tp!65835 e!544204))))

(declare-fun mapKey!34555 () (_ BitVec 32))

(declare-fun mapRest!34555 () (Array (_ BitVec 32) ValueCell!10372))

(declare-fun mapValue!34555 () ValueCell!10372)

(assert (=> mapNonEmpty!34555 (= (arr!28605 _values!1400) (store mapRest!34555 mapKey!34555 mapValue!34555))))

(declare-fun mapIsEmpty!34555 () Bool)

(assert (=> mapIsEmpty!34555 mapRes!34555))

(declare-fun res!646271 () Bool)

(assert (=> start!82800 (=> (not res!646271) (not e!544203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82800 (= res!646271 (validMask!0 mask!2110))))

(assert (=> start!82800 e!544203))

(assert (=> start!82800 true))

(declare-fun e!544202 () Bool)

(declare-fun array_inv!22059 (array!59481) Bool)

(assert (=> start!82800 (and (array_inv!22059 _values!1400) e!544202)))

(declare-fun array_inv!22060 (array!59479) Bool)

(assert (=> start!82800 (array_inv!22060 _keys!1686)))

(assert (=> start!82800 tp!65836))

(assert (=> start!82800 tp_is_empty!21707))

(declare-fun b!965317 () Bool)

(declare-fun res!646268 () Bool)

(assert (=> b!965317 (=> (not res!646268) (not e!544203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59479 (_ BitVec 32)) Bool)

(assert (=> b!965317 (= res!646268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965318 () Bool)

(declare-fun e!544200 () Bool)

(assert (=> b!965318 (= e!544202 (and e!544200 mapRes!34555))))

(declare-fun condMapEmpty!34555 () Bool)

(declare-fun mapDefault!34555 () ValueCell!10372)

