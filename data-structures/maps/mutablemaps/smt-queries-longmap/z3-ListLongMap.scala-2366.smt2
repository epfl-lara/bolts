; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37668 () Bool)

(assert start!37668)

(declare-fun b!385396 () Bool)

(declare-fun res!219912 () Bool)

(declare-fun e!233930 () Bool)

(assert (=> b!385396 (=> (not res!219912) (not e!233930))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385396 (= res!219912 (validKeyInArray!0 k0!778))))

(declare-fun b!385397 () Bool)

(declare-fun res!219917 () Bool)

(assert (=> b!385397 (=> (not res!219917) (not e!233930))))

(declare-datatypes ((array!22747 0))(
  ( (array!22748 (arr!10839 (Array (_ BitVec 32) (_ BitVec 64))) (size!11191 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22747)

(declare-fun arrayContainsKey!0 (array!22747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385397 (= res!219917 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!219913 () Bool)

(assert (=> start!37668 (=> (not res!219913) (not e!233930))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37668 (= res!219913 (validMask!0 mask!970))))

(assert (=> start!37668 e!233930))

(assert (=> start!37668 true))

(declare-datatypes ((V!13685 0))(
  ( (V!13686 (val!4762 Int)) )
))
(declare-datatypes ((ValueCell!4374 0))(
  ( (ValueCellFull!4374 (v!6955 V!13685)) (EmptyCell!4374) )
))
(declare-datatypes ((array!22749 0))(
  ( (array!22750 (arr!10840 (Array (_ BitVec 32) ValueCell!4374)) (size!11192 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22749)

(declare-fun e!233933 () Bool)

(declare-fun array_inv!7954 (array!22749) Bool)

(assert (=> start!37668 (and (array_inv!7954 _values!506) e!233933)))

(declare-fun array_inv!7955 (array!22747) Bool)

(assert (=> start!37668 (array_inv!7955 _keys!658)))

(declare-fun mapIsEmpty!15717 () Bool)

(declare-fun mapRes!15717 () Bool)

(assert (=> mapIsEmpty!15717 mapRes!15717))

(declare-fun b!385398 () Bool)

(declare-fun e!233934 () Bool)

(declare-fun tp_is_empty!9435 () Bool)

(assert (=> b!385398 (= e!233934 tp_is_empty!9435)))

(declare-fun mapNonEmpty!15717 () Bool)

(declare-fun tp!31044 () Bool)

(assert (=> mapNonEmpty!15717 (= mapRes!15717 (and tp!31044 e!233934))))

(declare-fun mapRest!15717 () (Array (_ BitVec 32) ValueCell!4374))

(declare-fun mapValue!15717 () ValueCell!4374)

(declare-fun mapKey!15717 () (_ BitVec 32))

(assert (=> mapNonEmpty!15717 (= (arr!10840 _values!506) (store mapRest!15717 mapKey!15717 mapValue!15717))))

(declare-fun b!385399 () Bool)

(declare-fun e!233932 () Bool)

(assert (=> b!385399 (= e!233932 tp_is_empty!9435)))

(declare-fun b!385400 () Bool)

(declare-fun res!219915 () Bool)

(assert (=> b!385400 (=> (not res!219915) (not e!233930))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385400 (= res!219915 (or (= (select (arr!10839 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10839 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385401 () Bool)

(declare-fun res!219911 () Bool)

(assert (=> b!385401 (=> (not res!219911) (not e!233930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22747 (_ BitVec 32)) Bool)

(assert (=> b!385401 (= res!219911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385402 () Bool)

(declare-fun res!219910 () Bool)

(assert (=> b!385402 (=> (not res!219910) (not e!233930))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385402 (= res!219910 (and (= (size!11192 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11191 _keys!658) (size!11192 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385403 () Bool)

(declare-fun res!219914 () Bool)

(assert (=> b!385403 (=> (not res!219914) (not e!233930))))

(assert (=> b!385403 (= res!219914 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11191 _keys!658))))))

(declare-fun b!385404 () Bool)

(assert (=> b!385404 (= e!233930 false)))

(declare-fun lt!181597 () Bool)

(assert (=> b!385404 (= lt!181597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!22748 (store (arr!10839 _keys!658) i!548 k0!778) (size!11191 _keys!658)) mask!970))))

(declare-fun b!385405 () Bool)

(declare-fun res!219916 () Bool)

(assert (=> b!385405 (=> (not res!219916) (not e!233930))))

(declare-datatypes ((List!6225 0))(
  ( (Nil!6222) (Cons!6221 (h!7077 (_ BitVec 64)) (t!11383 List!6225)) )
))
(declare-fun arrayNoDuplicates!0 (array!22747 (_ BitVec 32) List!6225) Bool)

(assert (=> b!385405 (= res!219916 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6222))))

(declare-fun b!385406 () Bool)

(assert (=> b!385406 (= e!233933 (and e!233932 mapRes!15717))))

(declare-fun condMapEmpty!15717 () Bool)

(declare-fun mapDefault!15717 () ValueCell!4374)

(assert (=> b!385406 (= condMapEmpty!15717 (= (arr!10840 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4374)) mapDefault!15717)))))

(assert (= (and start!37668 res!219913) b!385402))

(assert (= (and b!385402 res!219910) b!385401))

(assert (= (and b!385401 res!219911) b!385405))

(assert (= (and b!385405 res!219916) b!385403))

(assert (= (and b!385403 res!219914) b!385396))

(assert (= (and b!385396 res!219912) b!385400))

(assert (= (and b!385400 res!219915) b!385397))

(assert (= (and b!385397 res!219917) b!385404))

(assert (= (and b!385406 condMapEmpty!15717) mapIsEmpty!15717))

(assert (= (and b!385406 (not condMapEmpty!15717)) mapNonEmpty!15717))

(get-info :version)

(assert (= (and mapNonEmpty!15717 ((_ is ValueCellFull!4374) mapValue!15717)) b!385398))

(assert (= (and b!385406 ((_ is ValueCellFull!4374) mapDefault!15717)) b!385399))

(assert (= start!37668 b!385406))

(declare-fun m!382011 () Bool)

(assert (=> b!385400 m!382011))

(declare-fun m!382013 () Bool)

(assert (=> start!37668 m!382013))

(declare-fun m!382015 () Bool)

(assert (=> start!37668 m!382015))

(declare-fun m!382017 () Bool)

(assert (=> start!37668 m!382017))

(declare-fun m!382019 () Bool)

(assert (=> b!385401 m!382019))

(declare-fun m!382021 () Bool)

(assert (=> b!385397 m!382021))

(declare-fun m!382023 () Bool)

(assert (=> b!385405 m!382023))

(declare-fun m!382025 () Bool)

(assert (=> b!385396 m!382025))

(declare-fun m!382027 () Bool)

(assert (=> mapNonEmpty!15717 m!382027))

(declare-fun m!382029 () Bool)

(assert (=> b!385404 m!382029))

(declare-fun m!382031 () Bool)

(assert (=> b!385404 m!382031))

(check-sat (not b!385396) (not mapNonEmpty!15717) tp_is_empty!9435 (not b!385404) (not b!385397) (not b!385405) (not start!37668) (not b!385401))
(check-sat)
