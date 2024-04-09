; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83464 () Bool)

(assert start!83464)

(declare-fun b_free!19429 () Bool)

(declare-fun b_next!19429 () Bool)

(assert (=> start!83464 (= b_free!19429 (not b_next!19429))))

(declare-fun tp!67567 () Bool)

(declare-fun b_and!31049 () Bool)

(assert (=> start!83464 (= tp!67567 b_and!31049)))

(declare-fun b!974376 () Bool)

(declare-fun res!652367 () Bool)

(declare-fun e!549218 () Bool)

(assert (=> b!974376 (=> (not res!652367) (not e!549218))))

(declare-datatypes ((array!60673 0))(
  ( (array!60674 (arr!29196 (Array (_ BitVec 32) (_ BitVec 64))) (size!29676 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60673)

(declare-datatypes ((List!20385 0))(
  ( (Nil!20382) (Cons!20381 (h!21543 (_ BitVec 64)) (t!28870 List!20385)) )
))
(declare-fun arrayNoDuplicates!0 (array!60673 (_ BitVec 32) List!20385) Bool)

(assert (=> b!974376 (= res!652367 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20382))))

(declare-fun b!974377 () Bool)

(declare-fun res!652364 () Bool)

(assert (=> b!974377 (=> (not res!652364) (not e!549218))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60673 (_ BitVec 32)) Bool)

(assert (=> b!974377 (= res!652364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974378 () Bool)

(declare-fun e!549219 () Bool)

(assert (=> b!974378 (= e!549218 e!549219)))

(declare-fun res!652363 () Bool)

(assert (=> b!974378 (=> (not res!652363) (not e!549219))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974378 (= res!652363 (not (validKeyInArray!0 (select (arr!29196 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-datatypes ((V!34753 0))(
  ( (V!34754 (val!11214 Int)) )
))
(declare-datatypes ((ValueCell!10682 0))(
  ( (ValueCellFull!10682 (v!13773 V!34753)) (EmptyCell!10682) )
))
(declare-datatypes ((array!60675 0))(
  ( (array!60676 (arr!29197 (Array (_ BitVec 32) ValueCell!10682)) (size!29677 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60675)

(declare-fun zeroValue!1367 () V!34753)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34753)

(declare-datatypes ((tuple2!14510 0))(
  ( (tuple2!14511 (_1!7265 (_ BitVec 64)) (_2!7265 V!34753)) )
))
(declare-datatypes ((List!20386 0))(
  ( (Nil!20383) (Cons!20382 (h!21544 tuple2!14510) (t!28871 List!20386)) )
))
(declare-datatypes ((ListLongMap!13221 0))(
  ( (ListLongMap!13222 (toList!6626 List!20386)) )
))
(declare-fun lt!432724 () ListLongMap!13221)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3811 (array!60673 array!60675 (_ BitVec 32) (_ BitVec 32) V!34753 V!34753 (_ BitVec 32) Int) ListLongMap!13221)

(assert (=> b!974378 (= lt!432724 (getCurrentListMap!3811 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974379 () Bool)

(declare-fun res!652365 () Bool)

(assert (=> b!974379 (=> (not res!652365) (not e!549218))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974379 (= res!652365 (validKeyInArray!0 (select (arr!29196 _keys!1717) i!822)))))

(declare-fun b!974380 () Bool)

(declare-fun res!652368 () Bool)

(assert (=> b!974380 (=> (not res!652368) (not e!549218))))

(assert (=> b!974380 (= res!652368 (and (= (size!29677 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29676 _keys!1717) (size!29677 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974381 () Bool)

(assert (=> b!974381 (= e!549219 (bvsgt (bvsub from!2118 #b00000000000000000000000000000001) (size!29676 _keys!1717)))))

(declare-fun b!974382 () Bool)

(declare-fun e!549217 () Bool)

(declare-fun e!549222 () Bool)

(declare-fun mapRes!35500 () Bool)

(assert (=> b!974382 (= e!549217 (and e!549222 mapRes!35500))))

(declare-fun condMapEmpty!35500 () Bool)

(declare-fun mapDefault!35500 () ValueCell!10682)

